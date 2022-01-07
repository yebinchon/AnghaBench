; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_log_osstatus.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_log_osstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i32 }

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFErrorDomainOSStatus = common dso_local global i32 0, align 4
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Error in %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.vt_h264_encoder*, i8*, i32)* @log_osstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_osstatus(i32 %0, %struct.vt_h264_encoder* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vt_h264_encoder*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vt_h264_encoder* %1, %struct.vt_h264_encoder** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %12 = load i32, i32* @kCFAllocatorDefault, align 4
  %13 = load i32, i32* @kCFErrorDomainOSStatus, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @CFErrorCreate(i32 %12, i32 %13, i32 %14, i32* null)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @CFErrorCopyDescription(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %20 = call i8* @cfstr_copy_cstr(i32 %18, i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %4
  %24 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %25 = icmp ne %struct.vt_h264_encoder* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @VT_BLOG(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  br label %36

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @VT_LOG(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @bfree(i8* %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @CFRelease(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @CFRelease(i32 %42)
  ret void
}

declare dso_local i32 @CFErrorCreate(i32, i32, i32, i32*) #1

declare dso_local i32 @CFErrorCopyDescription(i32) #1

declare dso_local i8* @cfstr_copy_cstr(i32, i32) #1

declare dso_local i32 @VT_BLOG(i32, i8*, i8*, i8*) #1

declare dso_local i32 @VT_LOG(i32, i8*, i8*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @CFRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
