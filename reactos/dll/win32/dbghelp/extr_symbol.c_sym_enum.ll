; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_sym_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_sym_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_enum = type { i32 }
%struct.module_pair = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DMT_PE = common dso_local global i64 0, align 8
@dbghelp_options = common dso_local global i32 0, align 4
@SYMOPT_WINE_WITH_NATIVE_MODULES = common dso_local global i32 0, align 4
@DMT_ELF = common dso_local global i64 0, align 8
@DMT_MACHO = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DMT_UNKNOWN = common dso_local global i32 0, align 4
@starW = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, %struct.sym_enum*)* @sym_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_enum(i32 %0, i32 %1, i64* %2, %struct.sym_enum* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.sym_enum*, align 8
  %10 = alloca %struct.module_pair, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store %struct.sym_enum* %3, %struct.sym_enum** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_9__* @process_find_by_handle(i32 %13)
  %15 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %15, align 8
  %16 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %236

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %197

24:                                               ; preds = %21
  %25 = load i64*, i64** %8, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64*, i64** %8, align 8
  %29 = call i64* @strchrW(i64* %28, i8 signext 33)
  store i64* %29, i64** %11, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27, %24
  %32 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = load %struct.sym_enum*, %struct.sym_enum** %9, align 8
  %36 = call i32 @symt_enum_locals(%struct.TYPE_9__* %33, i64* %34, %struct.sym_enum* %35)
  store i32 %36, i32* %5, align 4
  br label %236

37:                                               ; preds = %27
  %38 = load i64*, i64** %11, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = icmp eq i64* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %5, align 4
  br label %236

43:                                               ; preds = %37
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load i64*, i64** %11, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = ptrtoint i64* %45 to i64
  %48 = ptrtoint i64* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 8
  %51 = add nsw i64 %50, 1
  %52 = mul i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call i64* @HeapAlloc(i32 %44, i32 0, i32 %53)
  store i64* %54, i64** %12, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %5, align 4
  br label %236

59:                                               ; preds = %43
  %60 = load i64*, i64** %12, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = ptrtoint i64* %62 to i64
  %65 = ptrtoint i64* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 8
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(i64* %60, i64* %61, i32 %69)
  %71 = load i64*, i64** %12, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = ptrtoint i64* %72 to i64
  %75 = ptrtoint i64* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 8
  %78 = getelementptr inbounds i64, i64* %71, i64 %77
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %83, align 8
  br label %84

84:                                               ; preds = %117, %59
  %85 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = icmp ne %struct.TYPE_10__* %86, null
  br i1 %87, label %88, label %123

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DMT_PE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %88
  %96 = call i64 @module_get_debug(%struct.module_pair* %10)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i64*, i64** %12, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i64 @SymMatchStringW(i32 %103, i64* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %98
  %109 = load i64*, i64** %11, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  %111 = load %struct.sym_enum*, %struct.sym_enum** %9, align 8
  %112 = call i64 @symt_enum_module(%struct.module_pair* %10, i64* %110, %struct.sym_enum* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %123

115:                                              ; preds = %108, %98
  br label %116

116:                                              ; preds = %115, %95, %88
  br label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %122, align 8
  br label %84

123:                                              ; preds = %114, %84
  %124 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = icmp ne %struct.TYPE_10__* %125, null
  br i1 %126, label %192, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @dbghelp_options, align 4
  %129 = load i32, i32* @SYMOPT_WINE_WITH_NATIVE_MODULES, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %192

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %137, align 8
  br label %138

138:                                              ; preds = %185, %132
  %139 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = icmp ne %struct.TYPE_10__* %140, null
  br i1 %141, label %142, label %191

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DMT_ELF, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @DMT_MACHO, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %184

156:                                              ; preds = %149, %142
  %157 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = call i32 @module_get_containee(%struct.TYPE_9__* %158, %struct.TYPE_10__* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %184, label %163

163:                                              ; preds = %156
  %164 = call i64 @module_get_debug(%struct.module_pair* %10)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i64*, i64** %12, align 8
  %173 = load i32, i32* @FALSE, align 4
  %174 = call i64 @SymMatchStringW(i32 %171, i64* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %166
  %177 = load i64*, i64** %11, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 1
  %179 = load %struct.sym_enum*, %struct.sym_enum** %9, align 8
  %180 = call i64 @symt_enum_module(%struct.module_pair* %10, i64* %178, %struct.sym_enum* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %191

183:                                              ; preds = %176, %166
  br label %184

184:                                              ; preds = %183, %163, %156, %149
  br label %185

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  store %struct.TYPE_10__* %189, %struct.TYPE_10__** %190, align 8
  br label %138

191:                                              ; preds = %182, %138
  br label %192

192:                                              ; preds = %191, %127, %123
  %193 = call i32 (...) @GetProcessHeap()
  %194 = load i64*, i64** %12, align 8
  %195 = call i32 @HeapFree(i32 %193, i32 0, i64* %194)
  %196 = load i32, i32* @TRUE, align 4
  store i32 %196, i32* %5, align 4
  br label %236

197:                                              ; preds = %21
  %198 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 0
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @DMT_UNKNOWN, align 4
  %202 = call %struct.TYPE_10__* @module_find_by_addr(%struct.TYPE_9__* %199, i32 %200, i32 %201)
  %203 = getelementptr inbounds %struct.module_pair, %struct.module_pair* %10, i32 0, i32 1
  store %struct.TYPE_10__* %202, %struct.TYPE_10__** %203, align 8
  %204 = call i64 @module_get_debug(%struct.module_pair* %10)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %197
  %207 = load i32, i32* @FALSE, align 4
  store i32 %207, i32* %5, align 4
  br label %236

208:                                              ; preds = %197
  %209 = load i64*, i64** %8, align 8
  %210 = icmp ne i64* %209, null
  br i1 %210, label %211, label %224

211:                                              ; preds = %208
  %212 = load i64*, i64** %8, align 8
  %213 = call i64* @strchrW(i64* %212, i8 signext 33)
  store i64* %213, i64** %11, align 8
  %214 = icmp ne i64* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %211
  %216 = load i64*, i64** %11, align 8
  %217 = load i64*, i64** %8, align 8
  %218 = icmp eq i64* %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i32, i32* @FALSE, align 4
  store i32 %220, i32* %5, align 4
  br label %236

221:                                              ; preds = %215
  %222 = load i64*, i64** %11, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 1
  store i64* %223, i64** %8, align 8
  br label %224

224:                                              ; preds = %221, %211, %208
  %225 = load i64*, i64** %8, align 8
  %226 = icmp ne i64* %225, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i64*, i64** %8, align 8
  br label %231

229:                                              ; preds = %224
  %230 = load i64*, i64** @starW, align 8
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i64* [ %228, %227 ], [ %230, %229 ]
  %233 = load %struct.sym_enum*, %struct.sym_enum** %9, align 8
  %234 = call i64 @symt_enum_module(%struct.module_pair* %10, i64* %232, %struct.sym_enum* %233)
  %235 = load i32, i32* @TRUE, align 4
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %231, %219, %206, %192, %57, %41, %31, %19
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local %struct.TYPE_9__* @process_find_by_handle(i32) #1

declare dso_local i64* @strchrW(i64*, i8 signext) #1

declare dso_local i32 @symt_enum_locals(%struct.TYPE_9__*, i64*, %struct.sym_enum*) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @module_get_debug(%struct.module_pair*) #1

declare dso_local i64 @SymMatchStringW(i32, i64*, i32) #1

declare dso_local i64 @symt_enum_module(%struct.module_pair*, i64*, %struct.sym_enum*) #1

declare dso_local i32 @module_get_containee(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local %struct.TYPE_10__* @module_find_by_addr(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
