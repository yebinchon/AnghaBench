; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_open_tun_generic.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_open_tun_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap = type { i64, i32, i32, i8* }

@DEV_TYPE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/%s%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@D_READ_WRITE = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Tried opening %s (failed)\00", align 1
@M_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Cannot allocate TUN/TAP dev dynamically\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@M_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"TUN/TAP device %s exists previously, keep at program end\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Cannot open TUN/TAP dev %s\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"TUN/TAP device %s opened\00", align 1
@TAPGIFNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, %struct.tuntap*)* @open_tun_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_tun_generic(i8* %0, i8* %1, i8* %2, i32 %3, %struct.tuntap* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tuntap*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.tuntap* %4, %struct.tuntap** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.tuntap*, %struct.tuntap** %10, align 8
  %16 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEV_TYPE_NULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.tuntap*, %struct.tuntap** %10, align 8
  %22 = call i32 @open_null(%struct.tuntap* %21)
  br label %126

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 (i8*, i32, i8*, i8*, ...) @openvpn_snprintf(i8* %27, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %78

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @has_digit(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %73, label %37

37:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 256
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 (i8*, i32, i8*, i8*, ...) @openvpn_snprintf(i8* %42, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %44)
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @openvpn_snprintf(i8* %46, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %47, i32 %48)
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %51 = load i32, i32* @O_RDWR, align 4
  %52 = call i8* @open(i8* %50, i32 %51)
  %53 = load %struct.tuntap*, %struct.tuntap** %10, align 8
  %54 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = icmp ugt i8* %52, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store i32 1, i32* %13, align 4
  br label %66

57:                                               ; preds = %41
  %58 = load i32, i32* @D_READ_WRITE, align 4
  %59 = load i32, i32* @M_ERRNO, align 4
  %60 = or i32 %58, %59
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %62 = call i32 (i32, i8*, ...) @msg(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %38

66:                                               ; preds = %56, %38
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @M_FATAL, align 4
  %71 = call i32 (i32, i8*, ...) @msg(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66
  br label %77

73:                                               ; preds = %33, %30
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 (i8*, i32, i8*, i8*, ...) @openvpn_snprintf(i8* %74, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %72
  br label %78

78:                                               ; preds = %77, %26
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @if_nametoindex(i8* %82)
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* @M_INFO, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 (i32, i8*, ...) @msg(i32 %86, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  %89 = load %struct.tuntap*, %struct.tuntap** %10, align 8
  %90 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %89, i32 0, i32 1
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %81
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %93 = load i32, i32* @O_RDWR, align 4
  %94 = call i8* @open(i8* %92, i32 %93)
  %95 = load %struct.tuntap*, %struct.tuntap** %10, align 8
  %96 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = icmp ult i8* %94, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @M_ERR, align 4
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %101 = call i32 (i32, i8*, ...) @msg(i32 %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %91
  br label %103

103:                                              ; preds = %102, %78
  %104 = load %struct.tuntap*, %struct.tuntap** %10, align 8
  %105 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @set_nonblock(i8* %106)
  %108 = load %struct.tuntap*, %struct.tuntap** %10, align 8
  %109 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @set_cloexec(i8* %110)
  %112 = load i32, i32* @M_INFO, align 4
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %114 = call i32 (i32, i8*, ...) @msg(i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %103
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  br label %121

119:                                              ; preds = %103
  %120 = load i8*, i8** %6, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i8* [ %118, %117 ], [ %120, %119 ]
  %123 = call i32 @string_alloc(i8* %122, i32* null)
  %124 = load %struct.tuntap*, %struct.tuntap** %10, align 8
  %125 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %20
  ret void
}

declare dso_local i32 @open_null(%struct.tuntap*) #1

declare dso_local i32 @openvpn_snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @has_digit(i8*) #1

declare dso_local i8* @open(i8*, i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i64 @if_nametoindex(i8*) #1

declare dso_local i32 @set_nonblock(i8*) #1

declare dso_local i32 @set_cloexec(i8*) #1

declare dso_local i32 @string_alloc(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
