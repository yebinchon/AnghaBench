; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_decompile_conbin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_decompile_conbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@Anum_pg_constraint_conbin = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"null conbin for constraint %u\00", align 1
@pg_get_expr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @decompile_conbin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decompile_conbin(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @GETSTRUCT(i32 %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @Anum_pg_constraint_conbin, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @heap_getattr(i32 %12, i32 %13, i32 %14, i32* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @pg_get_expr, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = call i32 @DirectFunctionCall2(i32 %25, i32 %26, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @TextDatumGetCString(i32 %32)
  ret i8* %33
}

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
