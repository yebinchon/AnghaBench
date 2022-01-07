; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_init_filedlg_infoA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_init_filedlg_infoA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64*, i64*, i64*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, i8*, i8*, i8*, i8*, i8* }

@CP_ACP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @init_filedlg_infoA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_filedlg_infoA(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = bitcast %struct.TYPE_9__* %12 to %struct.TYPE_8__*
  %14 = bitcast %struct.TYPE_8__* %5 to i8*
  %15 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 56, i1 false)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @heap_strdupAtoW(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @heap_strdupAtoW(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  store i8* %24, i8** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @heap_strdupAtoW(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  store i8* %29, i8** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %2
  %36 = load i32, i32* @CP_ACP, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @MultiByteToWideChar(i32 %36, i32 0, i64* %39, i32 %42, i8* null, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = call i8* @heap_alloc(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* @CP_ACP, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @MultiByteToWideChar(i32 %50, i32 0, i64* %53, i32 %56, i8* %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 %61, i32* %62, align 8
  br label %63

63:                                               ; preds = %35, %2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %116

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  store i64* %71, i64** %7, align 8
  br label %72

72:                                               ; preds = %76, %68
  %73 = load i64*, i64** %7, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i64*, i64** %7, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = call i32 @strlen(i64* %78)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  store i64* %82, i64** %7, align 8
  br label %72

83:                                               ; preds = %72
  %84 = load i64*, i64** %7, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %7, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = ptrtoint i64* %86 to i64
  %91 = ptrtoint i64* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @CP_ACP, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @MultiByteToWideChar(i32 %95, i32 0, i64* %98, i32 %99, i8* null, i32 0)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = call i8* @heap_alloc(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  store i8* %105, i8** %106, align 8
  %107 = load i32, i32* @CP_ACP, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @MultiByteToWideChar(i32 %107, i32 0, i64* %110, i32 %111, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %83, %63
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %177

121:                                              ; preds = %116
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  store i64* %124, i64** %11, align 8
  %125 = load i64*, i64** %11, align 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load i64*, i64** %11, align 8
  %130 = load i64*, i64** %11, align 8
  %131 = call i32 @strlen(i64* %130)
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  store i64* %134, i64** %11, align 8
  br label %135

135:                                              ; preds = %128, %121
  %136 = load i64*, i64** %11, align 8
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i64*, i64** %11, align 8
  %141 = load i64*, i64** %11, align 8
  %142 = call i32 @strlen(i64* %141)
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %140, i64 %143
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  store i64* %145, i64** %11, align 8
  br label %146

146:                                              ; preds = %139, %135
  %147 = load i64*, i64** %11, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = ptrtoint i64* %147 to i64
  %152 = ptrtoint i64* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 8
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* @CP_ACP, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @MultiByteToWideChar(i32 %156, i32 0, i64* %159, i32 %160, i8* null, i32 0)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 1
  %165 = trunc i64 %164 to i32
  %166 = call i8* @heap_alloc(i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i8* %166, i8** %167, align 8
  %168 = load i32, i32* @CP_ACP, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @MultiByteToWideChar(i32 %168, i32 0, i64* %171, i32 %172, i8* %174, i32 %175)
  br label %177

177:                                              ; preds = %146, %116
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = call i32 @init_filedlg_infoW(%struct.TYPE_8__* %5, %struct.TYPE_10__* %178)
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %181 = bitcast %struct.TYPE_9__* %180 to %struct.TYPE_8__*
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  store %struct.TYPE_8__* %181, %struct.TYPE_8__** %183, align 8
  %184 = load i32, i32* @FALSE, align 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @heap_free(i8* %188)
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @heap_free(i8* %191)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @heap_strdupAtoW(i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64*, i32, i8*, i32) #2

declare dso_local i8* @heap_alloc(i32) #2

declare dso_local i32 @strlen(i64*) #2

declare dso_local i32 @init_filedlg_infoW(%struct.TYPE_8__*, %struct.TYPE_10__*) #2

declare dso_local i32 @heap_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
