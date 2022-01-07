; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/arp/extr_arp.c_DisplayArpEntries.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/arp/extr_arp.c_DisplayArpEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.in_addr = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to allocate memory for GetIpNetTable\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"No ARP entires found\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GetIpAddrTable failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0AInterface: %s --- 0x%lx \0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"  Internet Address      Physical Address      Type\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DisplayArpEntries(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca %struct.in_addr, align 4
  %14 = alloca i32, align 4
  %15 = alloca [20 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %17 = call i32 @GetIpNetTable(%struct.TYPE_11__* %16, i64* %11, i32 0)
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i64, i64* %11, align 8
  %20 = call i64 @HeapAlloc(i32 %18, i32 0, i64 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = icmp eq %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %168

25:                                               ; preds = %2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = call i32 @ZeroMemory(%struct.TYPE_11__* %26, i32 16)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @GetIpNetTable(%struct.TYPE_11__* %28, i64* %11, i32 %29)
  %31 = load i32, i32* @NO_ERROR, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = call i32 @_T(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 (i32, ...) @_tprintf(i32 %34)
  %36 = call i32 (...) @DoFormatMessage()
  br label %168

37:                                               ; preds = %25
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call i32 @_T(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 (i32, ...) @_tprintf(i32 %43)
  br label %168

45:                                               ; preds = %37
  store i64 0, i64* %11, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = call i32 @GetIpAddrTable(%struct.TYPE_11__* %46, i64* %11, i32 0)
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @HeapAlloc(i32 %48, i32 0, i64 %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %10, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = icmp eq %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %168

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = call i32 @ZeroMemory(%struct.TYPE_11__* %56, i32 16)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @GetIpAddrTable(%struct.TYPE_11__* %58, i64* %11, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @NO_ERROR, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = call i32 @_T(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i32, ...) @_tprintf(i32 %64, i32 %65)
  %67 = call i32 (...) @DoFormatMessage()
  br label %168

68:                                               ; preds = %55
  store i64 0, i64* %8, align 8
  br label %69

69:                                               ; preds = %106, %68
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %69
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %81, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %75
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = bitcast %struct.in_addr* %13 to i64*
  %100 = load i64, i64* %99, align 4
  %101 = call i32 @inet_ntoa(i64 %100)
  store i32 %101, i32* %14, align 4
  %102 = getelementptr inbounds [20 x i32], [20 x i32]* %15, i64 0, i64 0
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @strcpy(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %90, %75
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %8, align 8
  br label %69

109:                                              ; preds = %69
  %110 = call i32 @_T(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %111 = getelementptr inbounds [20 x i32], [20 x i32]* %15, i64 0, i64 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i32, ...) @_tprintf(i32 %110, i32* %111, i64 %117)
  %119 = call i32 @_T(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %120 = call i32 (i32, ...) @_tprintf(i32 %119)
  store i64 0, i64* %7, align 8
  br label %121

121:                                              ; preds = %163, %109
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %122, %125
  br i1 %126, label %127, label %166

127:                                              ; preds = %121
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %127
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = bitcast %struct.in_addr* %12 to i64*
  %141 = load i64, i64* %140, align 4
  %142 = call i32 @inet_ntoa(i64 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i64 @strcmp(i32 %143, i32 %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %130
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %151
  %153 = call i32 @PrintEntries(%struct.TYPE_12__* %152)
  br label %154

154:                                              ; preds = %147, %130
  br label %162

155:                                              ; preds = %127
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 %159
  %161 = call i32 @PrintEntries(%struct.TYPE_12__* %160)
  br label %162

162:                                              ; preds = %155, %154
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %7, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %7, align 8
  br label %121

166:                                              ; preds = %121
  %167 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %167, i32* %3, align 4
  br label %184

168:                                              ; preds = %63, %54, %42, %33, %24
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %170 = icmp ne %struct.TYPE_11__* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = call i32 (...) @GetProcessHeap()
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %174 = call i32 @HeapFree(i32 %172, i32 0, %struct.TYPE_11__* %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %177 = icmp ne %struct.TYPE_11__* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = call i32 (...) @GetProcessHeap()
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %181 = call i32 @HeapFree(i32 %179, i32 0, %struct.TYPE_11__* %180)
  br label %182

182:                                              ; preds = %178, %175
  %183 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %166
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @GetIpNetTable(%struct.TYPE_11__*, i64*, i32) #1

declare dso_local i64 @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @DoFormatMessage(...) #1

declare dso_local i32 @GetIpAddrTable(%struct.TYPE_11__*, i64*, i32) #1

declare dso_local i32 @inet_ntoa(i64) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @PrintEntries(%struct.TYPE_12__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
