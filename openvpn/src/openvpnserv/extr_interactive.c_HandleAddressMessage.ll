; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_HandleAddressMessage.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_HandleAddressMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, i64, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i64, i32 }

@msg_add_address = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@address = common dso_local global i64 0, align 8
@CmpAddress = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, i32**)* @HandleAddressMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HandleAddressMessage(%struct.TYPE_16__* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @msg_add_address, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = call %struct.TYPE_17__* @malloc(i32 24)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %7, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = icmp eq %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %21, i64* %3, align 8
  br label %112

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = call i32 @InitializeUnicastIpAddressEntry(%struct.TYPE_17__* %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = call i32 @sockaddr_inet(i32 %27, i32* %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %50

43:                                               ; preds = %22
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %63

50:                                               ; preds = %22
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @InterfaceLuid(i32 %54, i32* %9)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %101

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %43
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = call i64 @CreateUnicastIpAddressEntry(%struct.TYPE_17__* %67)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %101

72:                                               ; preds = %66
  %73 = load i32**, i32*** %5, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @address, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = call i64 @AddListItem(i32* %76, %struct.TYPE_17__* %77)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %83 = call i64 @DeleteAddress(%struct.TYPE_17__* %82)
  br label %84

84:                                               ; preds = %81, %72
  br label %100

85:                                               ; preds = %63
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = call i64 @DeleteAddress(%struct.TYPE_17__* %86)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %101

91:                                               ; preds = %85
  %92 = load i32**, i32*** %5, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @address, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* @CmpAddress, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %98 = call %struct.TYPE_17__* @RemoveListItem(i32* %95, i32 %96, %struct.TYPE_17__* %97)
  %99 = call i32 @free(%struct.TYPE_17__* %98)
  br label %100

100:                                              ; preds = %91, %84
  br label %101

101:                                              ; preds = %100, %90, %71, %58
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i64, i64* %6, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104, %101
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = call i32 @free(%struct.TYPE_17__* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64, i64* %6, align 8
  store i64 %111, i64* %3, align 8
  br label %112

112:                                              ; preds = %110, %20
  %113 = load i64, i64* %3, align 8
  ret i64 %113
}

declare dso_local %struct.TYPE_17__* @malloc(i32) #1

declare dso_local i32 @InitializeUnicastIpAddressEntry(%struct.TYPE_17__*) #1

declare dso_local i32 @sockaddr_inet(i32, i32*) #1

declare dso_local i64 @InterfaceLuid(i32, i32*) #1

declare dso_local i64 @CreateUnicastIpAddressEntry(%struct.TYPE_17__*) #1

declare dso_local i64 @AddListItem(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @DeleteAddress(%struct.TYPE_17__*) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @RemoveListItem(i32*, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
