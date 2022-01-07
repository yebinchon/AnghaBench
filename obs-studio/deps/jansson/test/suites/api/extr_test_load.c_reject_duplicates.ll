; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_reject_duplicates.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_reject_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"{\22foo\22: 1, \22foo\22: 2}\00", align 1
@JSON_REJECT_DUPLICATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"json_loads did not detect a duplicate key\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"duplicate object key near '\22foo\22'\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reject_duplicates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reject_duplicates() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @JSON_REJECT_DUPLICATES, align 4
  %3 = call i64 @json_loads(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %2, i32* %1)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @check_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 16, i32 16)
  ret void
}

declare dso_local i64 @json_loads(i8*, i32, i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @check_error(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
