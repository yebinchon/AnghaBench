; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheInsertKey.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheInsertKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@ProcessHeap = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RtlAllocateHeap() failed\0A\00", align 1
@INSERT_FIRST = common dso_local global i64 0, align 8
@INSERT_BEFORE = common dso_local global i64 0, align 8
@INSERT_LAST = common dso_local global i64 0, align 8
@INSERT_AFTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @IniCacheInsertKey(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %5
  %16 = load i64*, i64** %10, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i64*, i64** %11, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %22, %18, %15, %5
  %30 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %225

31:                                               ; preds = %25
  %32 = load i32, i32* @ProcessHeap, align 4
  %33 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %34 = call i64 @RtlAllocateHeap(i32 %32, i32 %33, i32 4)
  %35 = inttoptr i64 %34 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %12, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %37 = icmp eq %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %225

40:                                               ; preds = %31
  %41 = load i32, i32* @ProcessHeap, align 4
  %42 = load i64*, i64** %10, align 8
  %43 = call i32 @wcslen(i64* %42)
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 32
  %47 = trunc i64 %46 to i32
  %48 = call i64 @RtlAllocateHeap(i32 %41, i32 0, i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_9__*
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp eq %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %40
  %57 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ProcessHeap, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = call i32 @RtlFreeHeap(i32 %58, i32 0, %struct.TYPE_9__* %59)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %225

61:                                               ; preds = %40
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = call i32 @wcscpy(%struct.TYPE_9__* %64, i64* %65)
  %67 = load i32, i32* @ProcessHeap, align 4
  %68 = load i64*, i64** %11, align 8
  %69 = call i32 @wcslen(i64* %68)
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 32
  %73 = trunc i64 %72 to i32
  %74 = call i64 @RtlAllocateHeap(i32 %67, i32 0, i32 %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_9__*
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = icmp eq %struct.TYPE_9__* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %61
  %83 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @ProcessHeap, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = call i32 @RtlFreeHeap(i32 %84, i32 0, %struct.TYPE_9__* %87)
  %89 = load i32, i32* @ProcessHeap, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %91 = call i32 @RtlFreeHeap(i32 %89, i32 0, %struct.TYPE_9__* %90)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %225

92:                                               ; preds = %61
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i64*, i64** %11, align 8
  %97 = call i32 @wcscpy(%struct.TYPE_9__* %95, i64* %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = icmp eq %struct.TYPE_9__* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %108, align 8
  br label %223

109:                                              ; preds = %92
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @INSERT_FIRST, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %126, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @INSERT_BEFORE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %113
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = icmp eq %struct.TYPE_9__* %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = icmp eq %struct.TYPE_9__* %121, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %120, %117, %109
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store %struct.TYPE_9__* %137, %struct.TYPE_9__** %139, align 8
  br label %222

140:                                              ; preds = %120, %113
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* @INSERT_BEFORE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %164

144:                                              ; preds = %140
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %146 = icmp ne %struct.TYPE_9__* %145, null
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %150, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  store %struct.TYPE_9__* %153, %struct.TYPE_9__** %155, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %160, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %163, align 8
  br label %221

164:                                              ; preds = %144, %140
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @INSERT_LAST, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %181, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* @INSERT_AFTER, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %168
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %174 = icmp eq %struct.TYPE_9__* %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = icmp eq %struct.TYPE_9__* %176, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %175, %172, %164
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store %struct.TYPE_9__* %182, %struct.TYPE_9__** %186, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  store %struct.TYPE_9__* %189, %struct.TYPE_9__** %191, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  store %struct.TYPE_9__* %192, %struct.TYPE_9__** %194, align 8
  br label %220

195:                                              ; preds = %175, %168
  %196 = load i64, i64* %9, align 8
  %197 = load i64, i64* @INSERT_AFTER, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %219

199:                                              ; preds = %195
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %201 = icmp ne %struct.TYPE_9__* %200, null
  br i1 %201, label %202, label %219

202:                                              ; preds = %199
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  store %struct.TYPE_9__* %205, %struct.TYPE_9__** %207, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  store %struct.TYPE_9__* %208, %struct.TYPE_9__** %210, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  store %struct.TYPE_9__* %211, %struct.TYPE_9__** %215, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  store %struct.TYPE_9__* %216, %struct.TYPE_9__** %218, align 8
  br label %219

219:                                              ; preds = %202, %199, %195
  br label %220

220:                                              ; preds = %219, %181
  br label %221

221:                                              ; preds = %220, %147
  br label %222

222:                                              ; preds = %221, %126
  br label %223

223:                                              ; preds = %222, %102
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %224, %struct.TYPE_9__** %6, align 8
  br label %225

225:                                              ; preds = %223, %82, %56, %38, %29
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %226
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @wcslen(i64*) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @wcscpy(%struct.TYPE_9__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
