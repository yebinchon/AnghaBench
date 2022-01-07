; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_dump_messages.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_dump_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"-- Message %p\0A-- Message Type: %d\0A-- Message Size: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sei_type_user_data_registered_itu_t_t35 = common dso_local global i64 0, align 8
@LIBCAPTION_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"cea708_parse error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sei_dump_messages(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %9 = load double, double* %4, align 8
  %10 = call i32 @cea708_init(i32* %5, double %9)
  %11 = load i32*, i32** %3, align 8
  store i32* %11, i32** %6, align 8
  br label %12

12:                                               ; preds = %61, %2
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @sei_message_data(i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @sei_message_size(i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @sei_message_type(i32* %22)
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32* %21, i64 %23, i32 %25)
  br label %27

27:                                               ; preds = %30, %15
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %8, align 8
  br label %27

39:                                               ; preds = %27
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* @sei_type_user_data_registered_itu_t_t35, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @sei_message_type(i32* %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load i64, i64* @LIBCAPTION_OK, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32* @sei_message_data(i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @sei_message_size(i32* %50)
  %52 = call i64 @cea708_parse_h262(i32* %49, i64 %51, i32* %5)
  %53 = icmp ne i64 %47, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %59

57:                                               ; preds = %46
  %58 = call i32 @cea708_dump(i32* %5)
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60
  %62 = load i32*, i32** %6, align 8
  %63 = call i32* @sei_message_next(i32* %62)
  store i32* %63, i32** %6, align 8
  br label %12

64:                                               ; preds = %12
  ret void
}

declare dso_local i32 @cea708_init(i32*, double) #1

declare dso_local i32* @sei_message_data(i32*) #1

declare dso_local i64 @sei_message_size(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @sei_message_type(i32*) #1

declare dso_local i64 @cea708_parse_h262(i32*, i64, i32*) #1

declare dso_local i32 @cea708_dump(i32*) #1

declare dso_local i32* @sei_message_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
