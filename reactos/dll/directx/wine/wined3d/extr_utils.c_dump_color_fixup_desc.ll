; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_dump_color_fixup_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_dump_color_fixup_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_fixup_desc = type { i64, i32, i64, i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"\09Complex: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\09X: %s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c", SIGN_FIXUP\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\09Y: %s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\09Z: %s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09W: %s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_color_fixup_desc(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %0) #0 {
  %2 = call i64 @is_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %0)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = call i32 @get_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %0)
  %6 = call i32 @debug_complex_fixup(i32 %5)
  %7 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %45

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @debug_fixup_channel_source(i32 %10)
  %12 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %17 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %11, i8* %16)
  %18 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @debug_fixup_channel_source(i32 %19)
  %21 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %26 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %20, i8* %25)
  %27 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @debug_fixup_channel_source(i32 %28)
  %30 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %35 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %29, i8* %34)
  %36 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @debug_fixup_channel_source(i32 %37)
  %39 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %44 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %38, i8* %43)
  br label %45

45:                                               ; preds = %8, %4
  ret void
}

declare dso_local i64 @is_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debug_complex_fixup(i32) #1

declare dso_local i32 @get_complex_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8) #1

declare dso_local i32 @debug_fixup_channel_source(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
