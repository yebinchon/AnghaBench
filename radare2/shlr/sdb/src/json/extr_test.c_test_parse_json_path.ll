; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/json/extr_test.c_test_parse_json_path.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/json/extr_test.c_test_parse_json_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"ping.board[\22pop\22][1][2][\22caca\22].panda\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" Int (%d)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_parse_json_path() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @rangstr_new(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = call i32 @json_path_first(i32* %2)
  br label %5

5:                                                ; preds = %11, %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @rangstr_print(i32* %2)
  %8 = call i32 @rangstr_int(i32* %2)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %11

11:                                               ; preds = %5
  %12 = call i64 @json_path_next(i32* %2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %5, label %14

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @rangstr_new(i8*) #1

declare dso_local i32 @json_path_first(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @rangstr_print(i32*) #1

declare dso_local i32 @rangstr_int(i32*) #1

declare dso_local i64 @json_path_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
