; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_HandleRouteMessage.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_HandleRouteMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, i32, i32, i64, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i64, i8* }

@msg_add_route = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@MIB_IPPROTO_NETMGMT = common dso_local global i32 0, align 4
@route = common dso_local global i64 0, align 8
@CmpRoute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32**)* @HandleRouteMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HandleRouteMessage(%struct.TYPE_18__* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @msg_add_route, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = call %struct.TYPE_19__* @malloc(i32 48)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %7, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = icmp eq %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %21, i64* %3, align 8
  br label %142

22:                                               ; preds = %2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = call i32 @ZeroMemory(%struct.TYPE_19__* %23, i32 48)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* @MIB_IPPROTO_NETMGMT, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 4
  %42 = call i8* @sockaddr_inet(i32 %39, i32* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = call i8* @sockaddr_inet(i32 %54, i32* %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %72

65:                                               ; preds = %22
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %93

72:                                               ; preds = %22
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @strlen(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @InterfaceLuid(i32 %83, i32* %9)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %131

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %72
  br label %93

93:                                               ; preds = %92, %65
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = call i64 @CreateIpForwardEntry2(%struct.TYPE_19__* %97)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %131

102:                                              ; preds = %96
  %103 = load i32**, i32*** %5, align 8
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @route, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = call i64 @AddListItem(i32* %106, %struct.TYPE_19__* %107)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %113 = call i64 @DeleteRoute(%struct.TYPE_19__* %112)
  br label %114

114:                                              ; preds = %111, %102
  br label %130

115:                                              ; preds = %93
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %117 = call i64 @DeleteRoute(%struct.TYPE_19__* %116)
  store i64 %117, i64* %6, align 8
  %118 = load i64, i64* %6, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %131

121:                                              ; preds = %115
  %122 = load i32**, i32*** %5, align 8
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @route, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* @CmpRoute, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %128 = call %struct.TYPE_19__* @RemoveListItem(i32* %125, i32 %126, %struct.TYPE_19__* %127)
  %129 = call i32 @free(%struct.TYPE_19__* %128)
  br label %130

130:                                              ; preds = %121, %114
  br label %131

131:                                              ; preds = %130, %120, %101, %87
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i64, i64* %6, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134, %131
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %139 = call i32 @free(%struct.TYPE_19__* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i64, i64* %6, align 8
  store i64 %141, i64* %3, align 8
  br label %142

142:                                              ; preds = %140, %20
  %143 = load i64, i64* %3, align 8
  ret i64 %143
}

declare dso_local %struct.TYPE_19__* @malloc(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @sockaddr_inet(i32, i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @InterfaceLuid(i32, i32*) #1

declare dso_local i64 @CreateIpForwardEntry2(%struct.TYPE_19__*) #1

declare dso_local i64 @AddListItem(i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @DeleteRoute(%struct.TYPE_19__*) #1

declare dso_local i32 @free(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @RemoveListItem(i32*, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
