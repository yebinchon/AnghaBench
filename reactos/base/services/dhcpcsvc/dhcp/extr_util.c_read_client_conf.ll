; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_util.c_read_client_conf.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_util.c_read_client_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.client_config* }
%struct.client_config = type { i64*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@MAX_COMPUTERNAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"util.c read_client_conf poorly implemented!\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Hostname: %s, length: %lu\00", align 1
@DHO_HOST_NAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Hostname: %s, length: %d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to allocate heap for hostname\00", align 1
@DHO_DHCP_CLIENT_IDENTIFIER = common dso_local global i64 0, align 8
@DHO_SUBNET_MASK = common dso_local global i64 0, align 8
@DHO_BROADCAST_ADDRESS = common dso_local global i64 0, align 8
@DHO_TIME_OFFSET = common dso_local global i64 0, align 8
@DHO_ROUTERS = common dso_local global i64 0, align 8
@DHO_DOMAIN_NAME = common dso_local global i64 0, align 8
@DHO_DOMAIN_NAME_SERVERS = common dso_local global i64 0, align 8
@DHO_NTP_SERVERS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_client_conf(%struct.interface_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca %struct.client_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.interface_info* %0, %struct.interface_info** %3, align 8
  %10 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = udiv i64 %12, 1
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %18 = icmp ne %struct.interface_info* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %21 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.client_config*, %struct.client_config** %23, align 8
  %25 = icmp ne %struct.client_config* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %28 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.client_config*, %struct.client_config** %30, align 8
  store %struct.client_config* %31, %struct.client_config** %4, align 8
  br label %34

32:                                               ; preds = %19, %1
  %33 = call i32 @warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %183

34:                                               ; preds = %26
  %35 = call i32 @GetComputerName(i8* %14, i32* %8)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %36)
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32* @HeapAlloc(i32 %38, i32 0, i32 %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %79

44:                                               ; preds = %34
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @memcpy(i32* %45, i8* %14, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load %struct.client_config*, %struct.client_config** %4, align 8
  %52 = getelementptr inbounds %struct.client_config, %struct.client_config* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* @DHO_HOST_NAME, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %50, i8** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.client_config*, %struct.client_config** %4, align 8
  %59 = getelementptr inbounds %struct.client_config, %struct.client_config* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i64, i64* @DHO_HOST_NAME, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %57, i32* %63, align 8
  %64 = load %struct.client_config*, %struct.client_config** %4, align 8
  %65 = getelementptr inbounds %struct.client_config, %struct.client_config* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i64, i64* @DHO_HOST_NAME, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.client_config*, %struct.client_config** %4, align 8
  %72 = getelementptr inbounds %struct.client_config, %struct.client_config* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i64, i64* @DHO_HOST_NAME, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 %77)
  br label %81

79:                                               ; preds = %34
  %80 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %44
  %82 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %83 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.client_config*, %struct.client_config** %4, align 8
  %87 = getelementptr inbounds %struct.client_config, %struct.client_config* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i64, i64* @DHO_DHCP_CLIENT_IDENTIFIER, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i8* %85, i8** %91, align 8
  %92 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %93 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.client_config*, %struct.client_config** %4, align 8
  %97 = getelementptr inbounds %struct.client_config, %struct.client_config* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i64, i64* @DHO_DHCP_CLIENT_IDENTIFIER, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %95, i32* %101, align 8
  %102 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %103 = load %struct.client_config*, %struct.client_config** %4, align 8
  %104 = getelementptr inbounds %struct.client_config, %struct.client_config* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.client_config*, %struct.client_config** %4, align 8
  %107 = getelementptr inbounds %struct.client_config, %struct.client_config* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i64, i64* %105, i64 %110
  store i64 %102, i64* %111, align 8
  %112 = load i64, i64* @DHO_BROADCAST_ADDRESS, align 8
  %113 = load %struct.client_config*, %struct.client_config** %4, align 8
  %114 = getelementptr inbounds %struct.client_config, %struct.client_config* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load %struct.client_config*, %struct.client_config** %4, align 8
  %117 = getelementptr inbounds %struct.client_config, %struct.client_config* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i64, i64* %115, i64 %120
  store i64 %112, i64* %121, align 8
  %122 = load i64, i64* @DHO_TIME_OFFSET, align 8
  %123 = load %struct.client_config*, %struct.client_config** %4, align 8
  %124 = getelementptr inbounds %struct.client_config, %struct.client_config* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.client_config*, %struct.client_config** %4, align 8
  %127 = getelementptr inbounds %struct.client_config, %struct.client_config* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i64, i64* %125, i64 %130
  store i64 %122, i64* %131, align 8
  %132 = load i64, i64* @DHO_ROUTERS, align 8
  %133 = load %struct.client_config*, %struct.client_config** %4, align 8
  %134 = getelementptr inbounds %struct.client_config, %struct.client_config* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load %struct.client_config*, %struct.client_config** %4, align 8
  %137 = getelementptr inbounds %struct.client_config, %struct.client_config* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i64, i64* %135, i64 %140
  store i64 %132, i64* %141, align 8
  %142 = load i64, i64* @DHO_DOMAIN_NAME, align 8
  %143 = load %struct.client_config*, %struct.client_config** %4, align 8
  %144 = getelementptr inbounds %struct.client_config, %struct.client_config* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load %struct.client_config*, %struct.client_config** %4, align 8
  %147 = getelementptr inbounds %struct.client_config, %struct.client_config* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i64, i64* %145, i64 %150
  store i64 %142, i64* %151, align 8
  %152 = load i64, i64* @DHO_DOMAIN_NAME_SERVERS, align 8
  %153 = load %struct.client_config*, %struct.client_config** %4, align 8
  %154 = getelementptr inbounds %struct.client_config, %struct.client_config* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load %struct.client_config*, %struct.client_config** %4, align 8
  %157 = getelementptr inbounds %struct.client_config, %struct.client_config* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i64, i64* %155, i64 %160
  store i64 %152, i64* %161, align 8
  %162 = load i64, i64* @DHO_HOST_NAME, align 8
  %163 = load %struct.client_config*, %struct.client_config** %4, align 8
  %164 = getelementptr inbounds %struct.client_config, %struct.client_config* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load %struct.client_config*, %struct.client_config** %4, align 8
  %167 = getelementptr inbounds %struct.client_config, %struct.client_config* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i64, i64* %165, i64 %170
  store i64 %162, i64* %171, align 8
  %172 = load i64, i64* @DHO_NTP_SERVERS, align 8
  %173 = load %struct.client_config*, %struct.client_config** %4, align 8
  %174 = getelementptr inbounds %struct.client_config, %struct.client_config* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load %struct.client_config*, %struct.client_config** %4, align 8
  %177 = getelementptr inbounds %struct.client_config, %struct.client_config* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i64, i64* %175, i64 %180
  store i64 %172, i64* %181, align 8
  %182 = call i32 @warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %183

183:                                              ; preds = %81, %32
  %184 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @GetComputerName(i8*, i32*) #2

declare dso_local i32 @debug(i8*, i8*, i32) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @error(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
