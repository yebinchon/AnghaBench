; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_rpcserver.c_Int_EnumDependentServicesW.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_rpcserver.c_Int_EnumDependentServicesW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@SERVICE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"ERROR! Unable to get number of services keys.\0A\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i32] [i32 68, i32 101, i32 112, i32 101, i32 110, i32 100, i32 79, i32 110, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"This should not happen at this point, report to Developer\0A\00", align 1
@ERROR_NOT_FOUND = common dso_local global i64 0, align 8
@SERVICE_STOPPED = common dso_local global i64 0, align 8
@SERVICE_INACTIVE = common dso_local global i64 0, align 8
@SERVICE_STATE_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_7__*, i64, %struct.TYPE_7__**, i64*, i64*)* @Int_EnumDependentServicesW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Int_EnumDependentServicesW(i32 %0, %struct.TYPE_7__* %1, i64 %2, %struct.TYPE_7__** %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %15, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %17, align 8
  store i32* %33, i32** %18, align 8
  store i32* %36, i32** %19, align 8
  %37 = load i64, i64* @SERVICE_ACTIVE, align 8
  store i64 %37, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @RegQueryInfoKeyW(i32 %38, i32* null, i32* null, i32* null, i64* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %6
  %44 = call i32 @DPRINT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* %14, align 8
  store i64 %45, i64* %7, align 8
  store i32 1, i32* %28, align 4
  br label %199

46:                                               ; preds = %6
  store i64 0, i64* %22, align 8
  br label %47

47:                                               ; preds = %194, %46
  %48 = load i64, i64* %22, align 8
  %49 = load i64, i64* %21, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %197

51:                                               ; preds = %47
  %52 = load i32, i32* @MAX_PATH, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %20, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i64, i64* %22, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = call i64 @RegEnumKeyExW(i32 %54, i64 %55, i32* %56, i64* %20, i32* null, i32* null, i32* null, i32* null)
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %7, align 8
  store i32 1, i32* %28, align 4
  br label %199

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %18, align 8
  %66 = load i32, i32* @KEY_READ, align 4
  %67 = call i64 @RegOpenKeyExW(i32 %64, i32* %65, i32 0, i32 %66, i32* %24)
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i64, i64* %14, align 8
  store i64 %72, i64* %7, align 8
  store i32 1, i32* %28, align 4
  br label %199

73:                                               ; preds = %63
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  store i64 %76, i64* %20, align 8
  %77 = load i32, i32* %24, align 4
  %78 = load i32*, i32** %19, align 8
  %79 = ptrtoint i32* %78 to i32
  %80 = call i64 @RegQueryValueExW(i32 %77, i8* bitcast ([16 x i32]* @.str.1 to i8*), i32* null, i32* null, i32 %79, i64* %20)
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %184

84:                                               ; preds = %73
  store i64 0, i64* %26, align 8
  br label %85

85:                                               ; preds = %174, %84
  %86 = load i32*, i32** %19, align 8
  %87 = load i64, i64* %26, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = call i32 @wcslen(i32* %88)
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %183

91:                                               ; preds = %85
  %92 = load i32*, i32** %19, align 8
  %93 = load i64, i64* %26, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @_wcsicmp(i32* %94, i32* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %174

100:                                              ; preds = %91
  %101 = load i32*, i32** %18, align 8
  %102 = call %struct.TYPE_7__* @ScmGetServiceEntryByName(i32* %101)
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %23, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %104 = icmp ne %struct.TYPE_7__* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = call i32 @DPRINT(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i64, i64* @ERROR_NOT_FOUND, align 8
  store i64 %107, i64* %7, align 8
  store i32 1, i32* %28, align 4
  br label %199

108:                                              ; preds = %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SERVICE_STOPPED, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i64, i64* @SERVICE_INACTIVE, align 8
  store i64 %116, i64* %25, align 8
  br label %117

117:                                              ; preds = %115, %108
  %118 = load i64, i64* %25, align 8
  %119 = load i64, i64* %10, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @SERVICE_STATE_ALL, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %173

125:                                              ; preds = %121, %117
  %126 = load i64, i64* %27, align 8
  %127 = add i64 %126, 4
  store i64 %127, i64* %27, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @wcslen(i32* %130)
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = load i64, i64* %27, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %27, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @wcslen(i32* %139)
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = load i64, i64* %27, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %27, align 8
  %146 = load i64, i64* %27, align 8
  %147 = add i64 %146, 8
  store i64 %147, i64* %27, align 8
  %148 = load i64*, i64** %12, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %27, align 8
  %151 = add nsw i64 %149, %150
  %152 = load i64*, i64** %12, align 8
  store i64 %151, i64* %152, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %157 = load i64*, i64** %12, align 8
  %158 = load i64*, i64** %13, align 8
  %159 = call i64 @Int_EnumDependentServicesW(i32 %153, %struct.TYPE_7__* %154, i64 %155, %struct.TYPE_7__** %156, i64* %157, i64* %158)
  %160 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %161 = icmp ne %struct.TYPE_7__** %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %125
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %164 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %165 = load i64*, i64** %13, align 8
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %164, i64 %166
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %167, align 8
  br label %168

168:                                              ; preds = %162, %125
  %169 = load i64*, i64** %13, align 8
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  %172 = load i64*, i64** %13, align 8
  store i64 %171, i64* %172, align 8
  br label %173

173:                                              ; preds = %168, %121
  br label %174

174:                                              ; preds = %173, %91
  %175 = load i32*, i32** %19, align 8
  %176 = load i64, i64* %26, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = call i32 @wcslen(i32* %177)
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %26, align 8
  %182 = add nsw i64 %181, %180
  store i64 %182, i64* %26, align 8
  br label %85

183:                                              ; preds = %85
  br label %191

184:                                              ; preds = %73
  %185 = load i64*, i64** %12, align 8
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %189, i64* %14, align 8
  br label %190

190:                                              ; preds = %188, %184
  br label %191

191:                                              ; preds = %190, %183
  %192 = load i32, i32* %24, align 4
  %193 = call i32 @RegCloseKey(i32 %192)
  br label %194

194:                                              ; preds = %191
  %195 = load i64, i64* %22, align 8
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %22, align 8
  br label %47

197:                                              ; preds = %47
  %198 = load i64, i64* %14, align 8
  store i64 %198, i64* %7, align 8
  store i32 1, i32* %28, align 4
  br label %199

199:                                              ; preds = %197, %105, %71, %61, %43
  %200 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i64, i64* %7, align 8
  ret i64 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @DPRINT(i8*) #2

declare dso_local i64 @RegEnumKeyExW(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i64*) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i64 @_wcsicmp(i32*, i32*) #2

declare dso_local %struct.TYPE_7__* @ScmGetServiceEntryByName(i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
