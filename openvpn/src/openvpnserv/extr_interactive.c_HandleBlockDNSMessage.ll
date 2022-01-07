; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_HandleBlockDNSMessage.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_HandleBlockDNSMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i32*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@msg_add_block_dns = common dso_local global i64 0, align 8
@BlockDNSErrHandler = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@block_dns = common dso_local global i64 0, align 8
@BLOCK_DNS_IFACE_METRIC = common dso_local global i64 0, align 8
@CmpEngine = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No previous block DNS filters to delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32**)* @HandleBlockDNSMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HandleBlockDNSMessage(%struct.TYPE_13__* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64 0, i64* %6, align 8
  store i32* null, i32** %8, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @CP_UTF8, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @settings, i32 0, i32 0), align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = call i32 @MultiByteToWideChar(i32 %18, i32 0, i32* %19, i32 %20, i32* %17, i32 %21)
  store i32* %17, i32** %9, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @msg_add_block_dns, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %114

29:                                               ; preds = %2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @BlockDNSErrHandler, align 4
  %36 = call i64 @add_block_dns_filters(i32** %8, i32 %33, i32* %34, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %113, label %39

39:                                               ; preds = %29
  %40 = call %struct.TYPE_14__* @malloc(i32 32)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %7, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = icmp ne %struct.TYPE_14__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %44, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %177

45:                                               ; preds = %39
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %13, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AF_INET, align 4
  %60 = call i8* @get_interface_metric(i32 %58, i32 %59, i32* %13)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %45
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %45
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AF_INET6, align 4
  %75 = call i8* @get_interface_metric(i32 %73, i32 %74, i32* %13)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %69
  %85 = load i32**, i32*** %5, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @block_dns, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = call i64 @AddListItem(i32* %88, %struct.TYPE_14__* %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %84
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AF_INET, align 4
  %99 = load i64, i64* @BLOCK_DNS_IFACE_METRIC, align 8
  %100 = call i64 @set_interface_metric(i32 %97, i32 %98, i64 %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %93
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @AF_INET6, align 4
  %109 = load i64, i64* @BLOCK_DNS_IFACE_METRIC, align 8
  %110 = call i64 @set_interface_metric(i32 %107, i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %103, %93
  br label %112

112:                                              ; preds = %111, %84
  br label %113

113:                                              ; preds = %112, %29
  br label %166

114:                                              ; preds = %2
  %115 = load i32**, i32*** %5, align 8
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @block_dns, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* @CmpEngine, align 4
  %120 = call %struct.TYPE_14__* @RemoveListItem(i32* %118, i32 %119, i32* null)
  store %struct.TYPE_14__* %120, %struct.TYPE_14__** %7, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = icmp ne %struct.TYPE_14__* %121, null
  br i1 %122, label %123, label %161

123:                                              ; preds = %114
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %8, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = call i64 @delete_block_dns_filters(i32* %127)
  store i64 %128, i64* %6, align 8
  store i32* null, i32** %8, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sge i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %123
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @AF_INET, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @set_interface_metric(i32 %137, i32 %138, i64 %141)
  br label %143

143:                                              ; preds = %133, %123
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp sge i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @AF_INET6, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @set_interface_metric(i32 %152, i32 %153, i64 %156)
  br label %158

158:                                              ; preds = %148, %143
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %160 = call i32 @free(%struct.TYPE_14__* %159)
  br label %165

161:                                              ; preds = %114
  %162 = load i32, i32* @M_ERR, align 4
  %163 = call i32 @TEXT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %164 = call i32 @MsgToEventLog(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %158
  br label %166

166:                                              ; preds = %165, %113
  %167 = load i64, i64* %6, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32*, i32** %8, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32*, i32** %8, align 8
  %174 = call i64 @delete_block_dns_filters(i32* %173)
  br label %175

175:                                              ; preds = %172, %169, %166
  %176 = load i64, i64* %6, align 8
  store i64 %176, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %177

177:                                              ; preds = %175, %43
  %178 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i64, i64* %3, align 8
  ret i64 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @add_block_dns_filters(i32**, i32, i32*, i32) #2

declare dso_local %struct.TYPE_14__* @malloc(i32) #2

declare dso_local i8* @get_interface_metric(i32, i32, i32*) #2

declare dso_local i64 @AddListItem(i32*, %struct.TYPE_14__*) #2

declare dso_local i64 @set_interface_metric(i32, i32, i64) #2

declare dso_local %struct.TYPE_14__* @RemoveListItem(i32*, i32, i32*) #2

declare dso_local i64 @delete_block_dns_filters(i32*) #2

declare dso_local i32 @free(%struct.TYPE_14__*) #2

declare dso_local i32 @MsgToEventLog(i32, i32) #2

declare dso_local i32 @TEXT(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
