; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_ifaddr.c_pg_foreach_ifaddr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_ifaddr.c_pg_foreach_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifconf = type { i8*, i64, %struct.ifreq* }
%struct.ifreq = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@SIOCGIFCONF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@SIOCGIFADDR = common dso_local global i32 0, align 4
@SIOCGIFNETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_foreach_ifaddr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifconf, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.ifreq, align 4
  %10 = alloca %struct.ifreq, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %12, align 8
  store i64 1024, i64* %13, align 8
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load i32, i32* @SOCK_DGRAM, align 4
  %17 = call i64 @socket(i32 %15, i32 %16, i32 0)
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @PGINVALID_SOCKET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %115

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %67, %54, %22
  %24 = load i64, i64* %13, align 8
  %25 = icmp ult i64 %24, 102400
  br i1 %25, label %26, label %68

26:                                               ; preds = %23
  %27 = load i64, i64* %13, align 8
  %28 = add i64 %27, 1024
  store i64 %28, i64* %13, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i8* @realloc(i8* %29, i64 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @close(i64 %37)
  %39 = load i64, i64* @ENOMEM, align 8
  store i64 %39, i64* @errno, align 8
  store i32 -1, i32* %3, align 4
  br label %115

40:                                               ; preds = %26
  %41 = call i32 @memset(%struct.ifconf* %6, i32 0, i32 24)
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %12, align 8
  %43 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i32, i32* @SIOCGIFCONF, align 4
  %48 = call i64 (i64, i32, ...) @ioctl(i64 %46, i32 %47, %struct.ifconf* %6)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EINVAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %23

55:                                               ; preds = %50
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @close(i64 %58)
  store i32 -1, i32* %3, align 4
  br label %115

60:                                               ; preds = %40
  %61 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = sub i64 %63, 1024
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %68

67:                                               ; preds = %60
  br label %23

68:                                               ; preds = %66, %23
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = bitcast i8* %72 to %struct.ifreq*
  store %struct.ifreq* %73, %struct.ifreq** %8, align 8
  %74 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %6, i32 0, i32 2
  %75 = load %struct.ifreq*, %struct.ifreq** %74, align 8
  store %struct.ifreq* %75, %struct.ifreq** %7, align 8
  br label %76

76:                                               ; preds = %100, %68
  %77 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %78 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %79 = icmp ult %struct.ifreq* %77, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %76
  %81 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %82 = call i32 @memcpy(%struct.ifreq* %9, %struct.ifreq* %81, i32 4)
  %83 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %84 = call i32 @memcpy(%struct.ifreq* %10, %struct.ifreq* %83, i32 4)
  %85 = load i64, i64* %14, align 8
  %86 = load i32, i32* @SIOCGIFADDR, align 4
  %87 = call i64 (i64, i32, ...) @ioctl(i64 %85, i32 %86, %struct.ifreq* %9, i64 4)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %80
  %90 = load i64, i64* %14, align 8
  %91 = load i32, i32* @SIOCGIFNETMASK, align 4
  %92 = call i64 (i64, i32, ...) @ioctl(i64 %90, i32 %91, %struct.ifreq* %10, i64 4)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* %4, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  %98 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %99 = call i32 @run_ifaddr_callback(i32 %95, i8* %96, i32* %97, i32* %98)
  br label %100

100:                                              ; preds = %94, %89, %80
  %101 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %102 = bitcast %struct.ifreq* %101 to i8*
  %103 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %104 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @_SIZEOF_ADDR_IFREQ(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  %109 = bitcast i8* %108 to %struct.ifreq*
  store %struct.ifreq* %109, %struct.ifreq** %7, align 8
  br label %76

110:                                              ; preds = %76
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i64, i64* %14, align 8
  %114 = call i32 @close(i64 %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %110, %55, %34, %21
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @memset(%struct.ifconf*, i32, i32) #1

declare dso_local i64 @ioctl(i64, i32, ...) #1

declare dso_local i32 @memcpy(%struct.ifreq*, %struct.ifreq*, i32) #1

declare dso_local i32 @run_ifaddr_callback(i32, i8*, i32*, i32*) #1

declare dso_local i32 @_SIZEOF_ADDR_IFREQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
