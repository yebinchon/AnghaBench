; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_codecs.c_mp_print_decoders.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_codecs.c_mp_print_decoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mp_decoder_list = type { i32, %struct.mp_decoder_entry* }
%struct.mp_decoder_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" - %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"    (no decoders)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_print_decoders(%struct.mp_log* %0, i32 %1, i8* %2, %struct.mp_decoder_list* %3) #0 {
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mp_decoder_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_decoder_entry*, align 8
  store %struct.mp_log* %0, %struct.mp_log** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.mp_decoder_list* %3, %struct.mp_decoder_list** %8, align 8
  %11 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %11, i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %56, %4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %8, align 8
  %18 = getelementptr inbounds %struct.mp_decoder_list, %struct.mp_decoder_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %8, align 8
  %23 = getelementptr inbounds %struct.mp_decoder_list, %struct.mp_decoder_list* %22, i32 0, i32 1
  %24 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %24, i64 %26
  store %struct.mp_decoder_entry* %27, %struct.mp_decoder_entry** %10, align 8
  %28 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %10, align 8
  %31 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %28, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %10, align 8
  %35 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %10, align 8
  %38 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %21
  %43 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %10, align 8
  %46 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %43, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %42, %21
  %50 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %10, align 8
  %53 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %50, i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %8, align 8
  %61 = getelementptr inbounds %struct.mp_decoder_list, %struct.mp_decoder_list* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %65, i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %59
  ret void
}

declare dso_local i32 @mp_msg(%struct.mp_log*, i32, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
