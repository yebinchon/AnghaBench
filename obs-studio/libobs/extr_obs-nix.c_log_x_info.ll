; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_log_x_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-nix.c_log_x_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to open X display\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"X.Org\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Window System: X%d.%d, Vendor: %s, Version: %d.%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Window System: X%d.%d - vendor string: %s - vendor release: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @log_x_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_x_info() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = call i32* @XOpenDisplay(i32* null)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @LOG_INFO, align 4
  %11 = call i32 (i32, i8*, ...) @blog(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %48

12:                                               ; preds = %0
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @ProtocolVersion(i32* %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @ProtocolRevision(i32* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @VendorRelease(i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32*, i32** %1, align 8
  %20 = call i8* @ServerVendor(i32* %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strstr(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %12
  %25 = load i32, i32* @LOG_INFO, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sdiv i32 %29, 10000000
  %31 = load i32, i32* %4, align 4
  %32 = sdiv i32 %31, 100000
  %33 = srem i32 %32, 100
  %34 = load i32, i32* %4, align 4
  %35 = sdiv i32 %34, 1000
  %36 = srem i32 %35, 100
  %37 = call i32 (i32, i8*, ...) @blog(i32 %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %27, i8* %28, i32 %30, i32 %33, i32 %36)
  br label %45

38:                                               ; preds = %12
  %39 = load i32, i32* @LOG_INFO, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32, i8*, ...) @blog(i32 %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %41, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %24
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @XCloseDisplay(i32* %46)
  br label %48

48:                                               ; preds = %45, %9
  ret void
}

declare dso_local i32* @XOpenDisplay(i32*) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @ProtocolVersion(i32*) #1

declare dso_local i32 @ProtocolRevision(i32*) #1

declare dso_local i32 @VendorRelease(i32*) #1

declare dso_local i8* @ServerVendor(i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
