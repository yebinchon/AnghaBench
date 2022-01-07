; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_uavc.c_sepgsql_avc_unlabeled.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_uavc.c_sepgsql_avc_unlabeled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@avc_unlabeled = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"unlabeled\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"SELinux: failed to get initial security label: %m\00", align 1
@avc_mem_cxt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @sepgsql_avc_unlabeled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sepgsql_avc_unlabeled() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @avc_unlabeled, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = call i64 @security_get_initial_context_raw(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %1)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32, i32* @ERROR, align 4
  %9 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %10 = call i32 @errcode(i32 %9)
  %11 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @ereport(i32 %8, i32 %11)
  br label %13

13:                                               ; preds = %7, %4
  %14 = call i32 (...) @PG_TRY()
  %15 = load i32, i32* @avc_mem_cxt, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i8* @MemoryContextStrdup(i32 %15, i32 %16)
  store i8* %17, i8** @avc_unlabeled, align 8
  %18 = call i32 (...) @PG_FINALLY()
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @freecon(i32 %19)
  %21 = call i32 (...) @PG_END_TRY()
  br label %22

22:                                               ; preds = %13, %0
  %23 = load i8*, i8** @avc_unlabeled, align 8
  ret i8* %23
}

declare dso_local i64 @security_get_initial_context_raw(i8*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i8* @MemoryContextStrdup(i32, i32) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @freecon(i32) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
