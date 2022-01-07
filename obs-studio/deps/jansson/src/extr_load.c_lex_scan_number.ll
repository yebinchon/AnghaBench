; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_lex_scan_number.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_lex_scan_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { double, i64 }
%struct.TYPE_14__ = type { i32 }

@TOKEN_INVALID = common dso_local global i32 0, align 4
@JSON_DECODE_INT_AS_REAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"too big negative integer\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"too big integer\00", align 1
@TOKEN_INTEGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"real number overflow\00", align 1
@TOKEN_REAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32*)* @lex_scan_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_scan_number(%struct.TYPE_13__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @TOKEN_INVALID, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 45
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @lex_get_save(%struct.TYPE_13__* %18, i32* %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 48
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @lex_get_save(%struct.TYPE_13__* %25, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @l_isdigit(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @lex_unget_unsave(%struct.TYPE_13__* %32, i32 %33)
  br label %198

35:                                               ; preds = %24
  br label %55

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @l_isdigit(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %45, %40
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @lex_get_save(%struct.TYPE_13__* %42, i32* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @l_isdigit(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %41, label %49

49:                                               ; preds = %45
  br label %54

50:                                               ; preds = %36
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @lex_unget_unsave(%struct.TYPE_13__* %51, i32 %52)
  br label %198

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @JSON_DECODE_INT_AS_REAL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %114, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 46
  br i1 %64, label %65, label %114

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 69
  br i1 %67, label %68, label %114

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 101
  br i1 %70, label %71, label %114

71:                                               ; preds = %68
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @lex_unget_unsave(%struct.TYPE_13__* %72, i32 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = call i8* @strbuffer_value(%struct.TYPE_14__* %76)
  store i8* %77, i8** %8, align 8
  store i64 0, i64* @errno, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i64 @json_strtoint(i8* %78, i8** %9, i32 10)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @ERANGE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %71
  %84 = load i64, i64* %11, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = call i32 @error_set(i32* %87, %struct.TYPE_13__* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %94

90:                                               ; preds = %83
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = call i32 @error_set(i32* %91, %struct.TYPE_13__* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %86
  br label %198

95:                                               ; preds = %71
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %97, i64 %102
  %104 = icmp eq i8* %96, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* @TOKEN_INTEGER, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  store i32 0, i32* %4, align 4
  br label %199

114:                                              ; preds = %68, %65, %62, %55
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 46
  br i1 %116, label %117, label %141

117:                                              ; preds = %114
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @lex_get(%struct.TYPE_13__* %118, i32* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @l_isdigit(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %117
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @lex_unget(%struct.TYPE_13__* %125, i32 %126)
  br label %198

128:                                              ; preds = %117
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @lex_save(%struct.TYPE_13__* %129, i32 %130)
  br label %132

132:                                              ; preds = %136, %128
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @lex_get_save(%struct.TYPE_13__* %133, i32* %134)
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  %138 = call i64 @l_isdigit(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %132, label %140

140:                                              ; preds = %136
  br label %141

141:                                              ; preds = %140, %114
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 69
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 101
  br i1 %146, label %147, label %178

147:                                              ; preds = %144, %141
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @lex_get_save(%struct.TYPE_13__* %148, i32* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %151, 43
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 45
  br i1 %155, label %156, label %160

156:                                              ; preds = %153, %147
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @lex_get_save(%struct.TYPE_13__* %157, i32* %158)
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %156, %153
  %161 = load i32, i32* %6, align 4
  %162 = call i64 @l_isdigit(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @lex_unget_unsave(%struct.TYPE_13__* %165, i32 %166)
  br label %198

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %173, %168
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @lex_get_save(%struct.TYPE_13__* %170, i32* %171)
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %6, align 4
  %175 = call i64 @l_isdigit(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %169, label %177

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %177, %144
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @lex_unget_unsave(%struct.TYPE_13__* %179, i32 %180)
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 3
  %184 = call i64 @jsonp_strtod(%struct.TYPE_14__* %183, double* %10)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load i32*, i32** %7, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %189 = call i32 @error_set(i32* %187, %struct.TYPE_13__* %188, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %198

190:                                              ; preds = %178
  %191 = load i32, i32* @TOKEN_REAL, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load double, double* %10, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  store double %194, double* %197, align 8
  store i32 0, i32* %4, align 4
  br label %199

198:                                              ; preds = %186, %164, %124, %94, %50, %31
  store i32 -1, i32* %4, align 4
  br label %199

199:                                              ; preds = %198, %190, %95
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @lex_get_save(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @l_isdigit(i32) #1

declare dso_local i32 @lex_unget_unsave(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @strbuffer_value(%struct.TYPE_14__*) #1

declare dso_local i64 @json_strtoint(i8*, i8**, i32) #1

declare dso_local i32 @error_set(i32*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lex_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @lex_unget(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lex_save(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @jsonp_strtod(%struct.TYPE_14__*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
