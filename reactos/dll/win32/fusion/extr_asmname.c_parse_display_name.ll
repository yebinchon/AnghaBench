; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmname.c_parse_display_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmname.c_parse_display_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }

@S_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FUSION_E_INVALID_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@version = common dso_local global i32 0, align 4
@culture = common dso_local global i32 0, align 4
@pubkey = common dso_local global i32 0, align 4
@procarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @parse_display_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_display_name(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @S_OK, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %205

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strdupW(i8* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %29, i32* %3, align 4
  br label %205

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @strdupW(i8* %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %37, i32* %11, align 4
  br label %180

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @wcschr(i8* %39, i8 signext 44)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = call i8* @wcschr(i8* %49, i8 signext 32)
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @FUSION_E_INVALID_NAME, align 4
  store i32 %53, i32* %11, align 4
  br label %180

54:                                               ; preds = %48, %45
  %55 = load i8*, i8** %6, align 8
  %56 = call i8* @strdupW(i8* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %64, i32* %11, align 4
  br label %180

65:                                               ; preds = %54
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %180

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %176, %69
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %179

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = call i8* @wcschr(i8* %77, i8 signext 61)
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @FUSION_E_INVALID_NAME, align 4
  store i32 %82, i32* %11, align 4
  br label %180

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  store i8 0, i8* %84, align 1
  %86 = load i8*, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @FUSION_E_INVALID_NAME, align 4
  store i32 %90, i32* %11, align 4
  br label %180

91:                                               ; preds = %83
  %92 = load i8*, i8** %8, align 8
  %93 = call i8* @wcschr(i8* %92, i8 signext 44)
  store i8* %93, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  %97 = call i8* @wcschr(i8* %96, i8 signext 0)
  store i8* %97, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @FUSION_E_INVALID_NAME, align 4
  store i32 %100, i32* %11, align 4
  br label %180

101:                                              ; preds = %95
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %101, %91
  %104 = load i8*, i8** %9, align 8
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i8* @parse_value(i8* %105, i32 %111)
  store i8* %112, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  %115 = load i32, i32* @FUSION_E_INVALID_NAME, align 4
  store i32 %115, i32* %11, align 4
  br label %180

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %122, %116
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  br label %117

125:                                              ; preds = %117
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* @version, align 4
  %128 = call i32 @lstrcmpiW(i8* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @parse_version(%struct.TYPE_7__* %131, i8* %132)
  store i32 %133, i32* %11, align 4
  br label %169

134:                                              ; preds = %125
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* @culture, align 4
  %137 = call i32 @lstrcmpiW(i8* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 @parse_culture(%struct.TYPE_7__* %140, i8* %141)
  store i32 %142, i32* %11, align 4
  br label %168

143:                                              ; preds = %134
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* @pubkey, align 4
  %146 = call i32 @lstrcmpiW(i8* %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @parse_pubkey(%struct.TYPE_7__* %149, i8* %150)
  store i32 %151, i32* %11, align 4
  br label %167

152:                                              ; preds = %143
  %153 = load i8*, i8** %6, align 8
  %154 = load i32, i32* @procarch, align 4
  %155 = call i32 @lstrcmpiW(i8* %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %152
  %158 = load i8*, i8** %10, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  store i8* null, i8** %10, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @parse_procarch(%struct.TYPE_7__* %161, i8* %164)
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %157, %152
  br label %167

167:                                              ; preds = %166, %148
  br label %168

168:                                              ; preds = %167, %139
  br label %169

169:                                              ; preds = %168, %130
  %170 = load i8*, i8** %10, align 8
  %171 = call i32 @heap_free(i8* %170)
  %172 = load i32, i32* %11, align 4
  %173 = call i64 @FAILED(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %180

176:                                              ; preds = %169
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8* %178, i8** %6, align 8
  br label %72

179:                                              ; preds = %72
  br label %180

180:                                              ; preds = %179, %175, %114, %99, %89, %81, %68, %63, %52, %36
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @heap_free(i8* %181)
  %183 = load i32, i32* %11, align 4
  %184 = call i64 @FAILED(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %180
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @heap_free(i8* %189)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @heap_free(i8* %193)
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @heap_free(i8* %197)
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @heap_free(i8* %201)
  br label %203

203:                                              ; preds = %186, %180
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %28, %17
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i8* @strdupW(i8*) #1

declare dso_local i8* @wcschr(i8*, i8 signext) #1

declare dso_local i8* @parse_value(i8*, i32) #1

declare dso_local i32 @lstrcmpiW(i8*, i32) #1

declare dso_local i32 @parse_version(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @parse_culture(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @parse_pubkey(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @parse_procarch(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
