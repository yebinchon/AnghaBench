; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/bootstrap/extr_bootstrap.c_BootstrapModeMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/bootstrap/extr_bootstrap.c_BootstrapModeMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IsUnderPostmaster = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"backend is incorrectly linked to frontend functions\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@MAXATTR = common dso_local global i32 0, align 4
@attrtypes = common dso_local global i32** null, align 8
@Nulls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @BootstrapModeMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BootstrapModeMain() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @IsUnderPostmaster, align 4
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @Assert(i32 %5)
  %7 = call i32 (...) @IsBootstrapProcessingMode()
  %8 = call i32 @Assert(i32 %7)
  %9 = call i64 (...) @pg_link_canary_is_frontend()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @ERROR, align 4
  %13 = call i32 @elog(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i32 (...) @InitProcess()
  %16 = load i32, i32* @InvalidOid, align 4
  %17 = load i32, i32* @InvalidOid, align 4
  %18 = call i32 @InitPostgres(i32* null, i32 %16, i32* null, i32 %17, i32* null, i32 0)
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %32, %14
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @MAXATTR, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32**, i32*** @attrtypes, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* null, i32** %27, align 8
  %28 = load i32*, i32** @Nulls, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %19

35:                                               ; preds = %19
  %36 = call i32 (...) @StartTransactionCommand()
  %37 = call i32 (...) @boot_yyparse()
  %38 = call i32 (...) @CommitTransactionCommand()
  %39 = call i32 (...) @RelationMapFinishBootstrap()
  %40 = call i32 (...) @cleanup()
  %41 = call i32 @proc_exit(i32 0)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsBootstrapProcessingMode(...) #1

declare dso_local i64 @pg_link_canary_is_frontend(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @InitProcess(...) #1

declare dso_local i32 @InitPostgres(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @boot_yyparse(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @RelationMapFinishBootstrap(...) #1

declare dso_local i32 @cleanup(...) #1

declare dso_local i32 @proc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
