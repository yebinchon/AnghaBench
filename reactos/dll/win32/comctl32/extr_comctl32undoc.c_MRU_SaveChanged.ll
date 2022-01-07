; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comctl32undoc.c_MRU_SaveChanged.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comctl32undoc.c_MRU_SaveChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i64, %struct.TYPE_5__, %struct.TYPE_7__** }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@KEY_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Could not open key, error=%d, attempting to create\0A\00", align 1
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to create key /%s/, err=%d\0A\00", align 1
@WMRUF_CHANGED = common dso_local global i32 0, align 4
@strMRUList = common dso_local global i8* null, align 8
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"error saving MRUList, err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"saving MRUList=/%s/\0A\00", align 1
@WMRUIF_CHANGED = common dso_local global i32 0, align 4
@MRU_BINARY = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"error saving /%s/, err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"saving value for name /%s/ size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @MRU_SaveChanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MRU_SaveChanged(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @KEY_WRITE, align 4
  %17 = call i64 @RegOpenKeyExW(i32 %11, i8* %15, i32 0, i32 %16, i32* %5)
  store i64 %17, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %31 = load i32, i32* @KEY_READ, align 4
  %32 = load i32, i32* @KEY_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @RegCreateKeyExW(i32 %25, i8* %29, i32 0, i32* null, i32 %30, i32 %33, i32 0, i32* %5, i32 0)
  store i64 %34, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %19
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @debugstr_w(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %4, align 8
  %44 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %43)
  br label %162

45:                                               ; preds = %19
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @WMRUF_CHANGED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %46
  %54 = load i32, i32* @WMRUF_CHANGED, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** @strMRUList, align 8
  %62 = load i32, i32* @REG_SZ, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strlenW(i8* %69)
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 1
  %74 = trunc i64 %73 to i32
  %75 = call i64 @RegSetValueExW(i32 %60, i8* %61, i32 0, i32 %62, i32* %66, i32 %74)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %53
  %79 = load i64, i64* %4, align 8
  %80 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %78, %53
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @debugstr_w(i8* %84)
  %86 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %81, %46
  %88 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %88, align 1
  store i64 0, i64* %3, align 8
  br label %89

89:                                               ; preds = %156, %87
  %90 = load i64, i64* %3, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %159

95:                                               ; preds = %89
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %97, align 8
  %99 = load i64, i64* %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 %99
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %7, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @WMRUIF_CHANGED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %155

108:                                              ; preds = %95
  %109 = load i32, i32* @WMRUIF_CHANGED, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i64, i64* %3, align 8
  %116 = add i64 97, %115
  %117 = trunc i64 %116 to i8
  %118 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %117, i8* %118, align 1
  %119 = load i32, i32* %5, align 4
  %120 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MRU_BINARY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %108
  %129 = load i32, i32* @REG_BINARY, align 4
  br label %132

130:                                              ; preds = %108
  %131 = load i32, i32* @REG_SZ, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @RegSetValueExW(i32 %119, i8* %120, i32 0, i32 %133, i32* %135, i32 %138)
  store i64 %139, i64* %4, align 8
  %140 = load i64, i64* %4, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %132
  %143 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %144 = call i32 @debugstr_w(i8* %143)
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %4, align 8
  %147 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %145, i64 %146)
  br label %148

148:                                              ; preds = %142, %132
  %149 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %150 = call i32 @debugstr_w(i8* %149)
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %148, %95
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %3, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %3, align 8
  br label %89

159:                                              ; preds = %89
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @RegCloseKey(i32 %160)
  br label %162

162:                                              ; preds = %159, %36
  ret void
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @RegSetValueExW(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
