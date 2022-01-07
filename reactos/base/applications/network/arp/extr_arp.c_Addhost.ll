; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/arp/extr_arp.c_Addhost.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/arp/extr_arp.c_Addhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@INADDR_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ARP: bad IP address: %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ARP: bad argument: %s\0A\00", align 1
@SEPARATOR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"failed to allocate memory for GetIpNetTable\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@EOF = common dso_local global i64 0, align 8
@MIB_IPNET_TYPE_STATIC = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Addhost(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i64*, i64** %5, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i64*, i64** %5, align 8
  %19 = call i32 @inet_addr(i64* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @INADDR_NONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i64*, i64** %5, align 8
  %25 = call i32 (i32, ...) @_tprintf(i32 %23, i64* %24)
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %26, i32* %4, align 4
  br label %211

27:                                               ; preds = %17
  br label %31

28:                                               ; preds = %3
  %29 = call i32 (...) @Usage()
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %30, i32* %4, align 4
  br label %211

31:                                               ; preds = %27
  %32 = load i64*, i64** %6, align 8
  %33 = call i32 @strlen(i64* %32)
  %34 = icmp ne i32 %33, 17
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 @_T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64*, i64** %6, align 8
  %38 = call i32 (i32, ...) @_tprintf(i32 %36, i64* %37)
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %39, i32* %4, align 4
  br label %211

40:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %67, %40
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 17
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SEPARATOR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %67

53:                                               ; preds = %44
  %54 = load i64*, i64** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @isxdigit(i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = call i32 @_T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i64*, i64** %6, align 8
  %64 = call i32 (i32, ...) @_tprintf(i32 %62, i64* %63)
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %65, i32* %4, align 4
  br label %211

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %41

70:                                               ; preds = %41
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = call i64 @GetIpNetTable(%struct.TYPE_10__* %71, i32* %11, i32 0)
  %73 = call i32 (...) @GetProcessHeap()
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @HeapAlloc(i32 %73, i32 0, i32 %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %9, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = icmp eq %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %195

80:                                               ; preds = %70
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = call i32 @ZeroMemory(%struct.TYPE_10__* %81, i32 40)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i64 @GetIpNetTable(%struct.TYPE_10__* %83, i32* %11, i32 %84)
  %86 = load i64, i64* @NO_ERROR, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = call i32 @_T(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %90 = call i32 (i32, ...) @_tprintf(i32 %89)
  %91 = call i32 (...) @DoFormatMessage()
  br label %195

92:                                               ; preds = %80
  %93 = call i32 (...) @GetProcessHeap()
  %94 = call i64 @HeapAlloc(i32 %93, i32 0, i32 40)
  %95 = inttoptr i64 %94 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %8, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = icmp eq %struct.TYPE_10__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %195

99:                                               ; preds = %92
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = call i32 @ZeroMemory(%struct.TYPE_10__* %100, i32 40)
  %102 = load i64*, i64** %7, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i64*, i64** %7, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 5
  %108 = call i64 @sscanf(i64* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %107)
  %109 = load i64, i64* @EOF, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %195

112:                                              ; preds = %104
  br label %122

113:                                              ; preds = %99
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %113, %112
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 6, i32* %124, align 8
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %174, %122
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 6
  br i1 %127, label %128, label %177

128:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  %129 = load i64*, i64** %6, align 8
  %130 = load i32, i32* %12, align 4
  %131 = mul nsw i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @toupper(i64 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i64 @isdigit(i32 %137)
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 48, i32 55
  %142 = sub nsw i32 %136, %141
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = shl i32 %146, 4
  store i32 %147, i32* %13, align 4
  %148 = load i64*, i64** %6, align 8
  %149 = load i32, i32* %12, align 4
  %150 = mul nsw i32 %149, 3
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %148, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @toupper(i64 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i64 @isdigit(i32 %157)
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 48, i32 55
  %162 = sub nsw i32 %156, %161
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  store i64 %167, i64* %173, align 8
  br label %174

174:                                              ; preds = %128
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %125

177:                                              ; preds = %125
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @MIB_IPNET_TYPE_STATIC, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %185 = call i64 @SetIpNetEntry(%struct.TYPE_10__* %184)
  %186 = load i64, i64* @NO_ERROR, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %177
  %189 = call i32 (...) @DoFormatMessage()
  br label %195

190:                                              ; preds = %177
  %191 = call i32 (...) @GetProcessHeap()
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %193 = call i32 @HeapFree(i32 %191, i32 0, %struct.TYPE_10__* %192)
  %194 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %194, i32* %4, align 4
  br label %211

195:                                              ; preds = %188, %111, %98, %88, %79
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %197 = icmp ne %struct.TYPE_10__* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = call i32 (...) @GetProcessHeap()
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %201 = call i32 @HeapFree(i32 %199, i32 0, %struct.TYPE_10__* %200)
  br label %202

202:                                              ; preds = %198, %195
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %204 = icmp ne %struct.TYPE_10__* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = call i32 (...) @GetProcessHeap()
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %208 = call i32 @HeapFree(i32 %206, i32 0, %struct.TYPE_10__* %207)
  br label %209

209:                                              ; preds = %205, %202
  %210 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %209, %190, %61, %35, %28, %22
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @inet_addr(i64*) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @isxdigit(i64) #1

declare dso_local i64 @GetIpNetTable(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DoFormatMessage(...) #1

declare dso_local i64 @sscanf(i64*, i8*, i32*) #1

declare dso_local i32 @toupper(i64) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @SetIpNetEntry(%struct.TYPE_10__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
