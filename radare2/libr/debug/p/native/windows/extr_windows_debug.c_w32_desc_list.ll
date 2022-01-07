; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_desc_list.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_desc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_17__, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"win_desc_list/r_list_new\00", align 1
@PROCESS_DUP_HANDLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"win_desc_list/OpenProcess\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"win_desc_list/NtQuerySystemInformation\00", align 1
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@SystemHandleInformation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @w32_desc_list(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_19__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_18__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %20 = call i32* @r_list_newf(i32 (%struct.TYPE_20__*)* @free)
  store i32* %20, i32** %5, align 8
  store i32 65536, i32* %10, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %229

25:                                               ; preds = %1
  %26 = load i32, i32* @PROCESS_DUP_HANDLE, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32* @w32_OpenProcess(i32 %26, i32 %27, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = call i32 @r_sys_perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @r_list_free(i32* %33)
  store i32* null, i32** %2, align 8
  br label %229

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = call %struct.TYPE_20__* @malloc(i64 %37)
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %8, align 8
  br label %39

39:                                               ; preds = %57, %35
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @w32_NtQuerySystemInformation(i32 16, %struct.TYPE_20__* %40, i32 %41, i32* null)
  store i64 %42, i64* %9, align 8
  %43 = icmp eq i64 %42, 3221225476
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = trunc i64 %49 to i32
  %51 = call i8* @realloc(%struct.TYPE_20__* %47, i32 %50)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i8*, i8** %12, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %8, align 8
  br label %57

57:                                               ; preds = %54, %44
  br label %39

58:                                               ; preds = %39
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = call i32 @r_sys_perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @CloseHandle(i32* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @r_list_free(i32* %65)
  store i32* null, i32** %2, align 8
  br label %229

67:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %220, %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %223

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i64 %79
  %81 = bitcast %struct.TYPE_19__* %13 to i8*
  %82 = bitcast %struct.TYPE_19__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 12, i1 false)
  store i32* null, i32** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %220

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 28
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %220

93:                                               ; preds = %88
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %96 = call i32 (...) @GetCurrentProcess()
  %97 = call i64 @w32_NtDuplicateObject(i32* %94, i32* %95, i32 %96, i32** %14, i32 0, i32 0, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %220

100:                                              ; preds = %93
  %101 = call %struct.TYPE_20__* @malloc(i64 4096)
  store %struct.TYPE_20__* %101, %struct.TYPE_20__** %15, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %104 = call i64 @w32_NtQueryObject(i32* %102, i32 2, %struct.TYPE_20__* %103, i32 4096, i32* null)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @CloseHandle(i32* %107)
  br label %220

109:                                              ; preds = %100
  %110 = call %struct.TYPE_20__* @malloc(i64 4096)
  store %struct.TYPE_20__* %110, %struct.TYPE_20__** %16, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %112 = icmp ne %struct.TYPE_20__* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  br label %223

114:                                              ; preds = %109
  %115 = load i32*, i32** %14, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %117 = call i64 @w32_NtQueryObject(i32* %115, i32 1, %struct.TYPE_20__* %116, i32 4096, i32* %18)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %114
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %121 = load i32, i32* %18, align 4
  %122 = call i8* @realloc(%struct.TYPE_20__* %120, i32 %121)
  store i8* %122, i8** %19, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i8*, i8** %19, align 8
  %127 = bitcast i8* %126 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %127, %struct.TYPE_20__** %16, align 8
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32*, i32** %14, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %131 = load i32, i32* %18, align 4
  %132 = call i64 @w32_NtQueryObject(i32* %129, i32 1, %struct.TYPE_20__* %130, i32 %131, i32* null)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %136 = call i32 @free(%struct.TYPE_20__* %135)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %138 = call i32 @free(%struct.TYPE_20__* %137)
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @CloseHandle(i32* %139)
  br label %220

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %114
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %144 = bitcast %struct.TYPE_20__* %143 to %struct.TYPE_18__*
  %145 = bitcast %struct.TYPE_18__* %17 to i8*
  %146 = bitcast %struct.TYPE_18__* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 8, i1 false)
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %179

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = add i64 %154, 1
  %156 = call %struct.TYPE_20__* @malloc(i64 %155)
  store %struct.TYPE_20__* %156, %struct.TYPE_20__** %11, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, 2
  %163 = call i32 @wcstombs(%struct.TYPE_20__* %157, i32 %159, i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %167 = call i32* @r_debug_desc_new(i32 %165, %struct.TYPE_20__* %166, i32 0, i8 signext 63, i32 0)
  store i32* %167, i32** %4, align 8
  %168 = load i32*, i32** %4, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %150
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %172 = call i32 @free(%struct.TYPE_20__* %171)
  br label %223

173:                                              ; preds = %150
  %174 = load i32*, i32** %5, align 8
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @r_list_append(i32* %174, i32* %175)
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %178 = call i32 @free(%struct.TYPE_20__* %177)
  br label %213

179:                                              ; preds = %142
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sdiv i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = add i64 %185, 1
  %187 = call %struct.TYPE_20__* @malloc(i64 %186)
  store %struct.TYPE_20__* %187, %struct.TYPE_20__** %11, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @wcstombs(%struct.TYPE_20__* %188, i32 %192, i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %201 = call i32* @r_debug_desc_new(i32 %199, %struct.TYPE_20__* %200, i32 0, i8 signext 63, i32 0)
  store i32* %201, i32** %4, align 8
  %202 = load i32*, i32** %4, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %179
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %206 = call i32 @free(%struct.TYPE_20__* %205)
  br label %223

207:                                              ; preds = %179
  %208 = load i32*, i32** %5, align 8
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @r_list_append(i32* %208, i32* %209)
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %212 = call i32 @free(%struct.TYPE_20__* %211)
  br label %213

213:                                              ; preds = %207, %173
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %215 = call i32 @free(%struct.TYPE_20__* %214)
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %217 = call i32 @free(%struct.TYPE_20__* %216)
  %218 = load i32*, i32** %14, align 8
  %219 = call i32 @CloseHandle(i32* %218)
  br label %220

220:                                              ; preds = %213, %134, %106, %99, %92, %87
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %68

223:                                              ; preds = %204, %170, %113, %68
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %225 = call i32 @free(%struct.TYPE_20__* %224)
  %226 = load i32*, i32** %7, align 8
  %227 = call i32 @CloseHandle(i32* %226)
  %228 = load i32*, i32** %5, align 8
  store i32* %228, i32** %2, align 8
  br label %229

229:                                              ; preds = %223, %61, %31, %23
  %230 = load i32*, i32** %2, align 8
  ret i32* %230
}

declare dso_local i32* @r_list_newf(i32 (%struct.TYPE_20__*)*) #1

declare dso_local i32 @free(%struct.TYPE_20__*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @w32_OpenProcess(i32, i32, i32) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @r_list_free(i32*) #1

declare dso_local %struct.TYPE_20__* @malloc(i64) #1

declare dso_local i64 @w32_NtQuerySystemInformation(i32, %struct.TYPE_20__*, i32, i32*) #1

declare dso_local i8* @realloc(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @w32_NtDuplicateObject(i32*, i32*, i32, i32**, i32, i32, i32) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i64 @w32_NtQueryObject(i32*, i32, %struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @wcstombs(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32* @r_debug_desc_new(i32, %struct.TYPE_20__*, i32, i8 signext, i32) #1

declare dso_local i32 @r_list_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
