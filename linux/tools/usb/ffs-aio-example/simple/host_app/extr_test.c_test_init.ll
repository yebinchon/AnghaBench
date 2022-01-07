; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/simple/host_app/extr_test.c_test_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/simple/host_app/extr_test.c_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_state = type { i32, i32*, i32*, i32* }
%struct.libusb_device_descriptor = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"cannot init libusb: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no devices found\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to get device descriptor: %s\0A\00", align 1
@VENDOR = common dso_local global i64 0, align 8
@PRODUCT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot open device: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"unable to detach kernel driver: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot claim interface: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_init(%struct.test_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.libusb_device_descriptor, align 8
  store %struct.test_state* %0, %struct.test_state** %3, align 8
  %10 = load %struct.test_state*, %struct.test_state** %3, align 8
  %11 = getelementptr inbounds %struct.test_state, %struct.test_state* %10, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = load %struct.test_state*, %struct.test_state** %3, align 8
  %13 = getelementptr inbounds %struct.test_state, %struct.test_state* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.test_state*, %struct.test_state** %3, align 8
  %15 = getelementptr inbounds %struct.test_state, %struct.test_state* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.test_state*, %struct.test_state** %3, align 8
  %17 = getelementptr inbounds %struct.test_state, %struct.test_state* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.test_state*, %struct.test_state** %3, align 8
  %19 = getelementptr inbounds %struct.test_state, %struct.test_state* %18, i32 0, i32 1
  %20 = call i32 @libusb_init(i32** %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @libusb_error_name(i32 %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 1, i32* %2, align 4
  br label %149

27:                                               ; preds = %1
  %28 = load %struct.test_state*, %struct.test_state** %3, align 8
  %29 = getelementptr inbounds %struct.test_state, %struct.test_state* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @libusb_get_device_list(i32* %30, i32*** %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %144

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %70, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load i32**, i32*** %7, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @libusb_get_device_descriptor(i32* %47, %struct.libusb_device_descriptor* %9)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = call i8* @libusb_error_name(i32 %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %141

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %9, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VENDOR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %9, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PRODUCT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.test_state*, %struct.test_state** %3, align 8
  %68 = getelementptr inbounds %struct.test_state, %struct.test_state* %67, i32 0, i32 3
  store i32* %66, i32** %68, align 8
  br label %73

69:                                               ; preds = %60, %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %37

73:                                               ; preds = %65, %37
  %74 = load %struct.test_state*, %struct.test_state** %3, align 8
  %75 = getelementptr inbounds %struct.test_state, %struct.test_state* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %141

80:                                               ; preds = %73
  %81 = load %struct.test_state*, %struct.test_state** %3, align 8
  %82 = getelementptr inbounds %struct.test_state, %struct.test_state* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.test_state*, %struct.test_state** %3, align 8
  %85 = getelementptr inbounds %struct.test_state, %struct.test_state* %84, i32 0, i32 2
  %86 = call i32 @libusb_open(i32* %83, i32** %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load i32, i32* %5, align 4
  %91 = call i8* @libusb_error_name(i32 %90)
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  br label %141

93:                                               ; preds = %80
  %94 = load %struct.test_state*, %struct.test_state** %3, align 8
  %95 = getelementptr inbounds %struct.test_state, %struct.test_state* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @libusb_claim_interface(i32* %96, i32 0)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %93
  %100 = load %struct.test_state*, %struct.test_state** %3, align 8
  %101 = getelementptr inbounds %struct.test_state, %struct.test_state* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @libusb_detach_kernel_driver(i32* %102, i32 0)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* %5, align 4
  %108 = call i8* @libusb_error_name(i32 %107)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  br label %136

110:                                              ; preds = %99
  %111 = load %struct.test_state*, %struct.test_state** %3, align 8
  %112 = getelementptr inbounds %struct.test_state, %struct.test_state* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.test_state*, %struct.test_state** %3, align 8
  %114 = getelementptr inbounds %struct.test_state, %struct.test_state* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @libusb_claim_interface(i32* %115, i32 0)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %110
  %120 = load i32, i32* %5, align 4
  %121 = call i8* @libusb_error_name(i32 %120)
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %121)
  br label %125

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %93
  store i32 0, i32* %2, align 4
  br label %149

125:                                              ; preds = %119
  %126 = load %struct.test_state*, %struct.test_state** %3, align 8
  %127 = getelementptr inbounds %struct.test_state, %struct.test_state* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.test_state*, %struct.test_state** %3, align 8
  %132 = getelementptr inbounds %struct.test_state, %struct.test_state* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @libusb_attach_kernel_driver(i32* %133, i32 0)
  br label %135

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %106
  %137 = load %struct.test_state*, %struct.test_state** %3, align 8
  %138 = getelementptr inbounds %struct.test_state, %struct.test_state* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @libusb_close(i32* %139)
  br label %141

141:                                              ; preds = %136, %89, %78, %51
  %142 = load i32**, i32*** %7, align 8
  %143 = call i32 @libusb_free_device_list(i32** %142, i32 1)
  br label %144

144:                                              ; preds = %141, %34
  %145 = load %struct.test_state*, %struct.test_state** %3, align 8
  %146 = getelementptr inbounds %struct.test_state, %struct.test_state* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @libusb_exit(i32* %147)
  store i32 1, i32* %2, align 4
  br label %149

149:                                              ; preds = %144, %124, %23
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @libusb_init(i32**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @libusb_error_name(i32) #1

declare dso_local i32 @libusb_get_device_list(i32*, i32***) #1

declare dso_local i32 @libusb_get_device_descriptor(i32*, %struct.libusb_device_descriptor*) #1

declare dso_local i32 @libusb_open(i32*, i32**) #1

declare dso_local i32 @libusb_claim_interface(i32*, i32) #1

declare dso_local i32 @libusb_detach_kernel_driver(i32*, i32) #1

declare dso_local i32 @libusb_attach_kernel_driver(i32*, i32) #1

declare dso_local i32 @libusb_close(i32*) #1

declare dso_local i32 @libusb_free_device_list(i32**, i32) #1

declare dso_local i32 @libusb_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
