; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_encode_null.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_encode_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_ENCODE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"json_dumps didn't fail for NULL\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"json_dumpf didn't fail for NULL\00", align 1
@encode_null_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"json_dump_callback didn't fail for NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @encode_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_null() #0 {
  %1 = load i32, i32* @JSON_ENCODE_ANY, align 4
  %2 = call i32* @json_dumps(i32* null, i32 %1)
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @stderr, align 4
  %8 = load i32, i32* @JSON_ENCODE_ANY, align 4
  %9 = call i32 @json_dumpf(i32* null, i32 %7, i32 %8)
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %6
  %14 = load i32, i32* @encode_null_callback, align 4
  %15 = load i32, i32* @JSON_ENCODE_ANY, align 4
  %16 = call i32 @json_dump_callback(i32* null, i32 %14, i32* null, i32 %15)
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32* @json_dumps(i32*, i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_dumpf(i32*, i32, i32) #1

declare dso_local i32 @json_dump_callback(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
