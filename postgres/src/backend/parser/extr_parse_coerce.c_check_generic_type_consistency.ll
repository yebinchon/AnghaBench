; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_check_generic_type_consistency.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_check_generic_type_consistency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@ANYELEMENTOID = common dso_local global i64 0, align 8
@ANYNONARRAYOID = common dso_local global i64 0, align 8
@ANYENUMOID = common dso_local global i64 0, align 8
@UNKNOWNOID = common dso_local global i64 0, align 8
@ANYARRAYOID = common dso_local global i64 0, align 8
@ANYRANGEOID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_generic_type_consistency(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i64, i64* @InvalidOid, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* @InvalidOid, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* @InvalidOid, align 8
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %122, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %125

26:                                               ; preds = %22
  %27 = load i64*, i64** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %17, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %18, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* @ANYELEMENTOID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %26
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* @ANYNONARRAYOID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* @ANYENUMOID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44, %40, %26
  store i32 1, i32* %14, align 4
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @ANYNONARRAYOID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %15, align 4
  br label %59

53:                                               ; preds = %48
  %54 = load i64, i64* %17, align 8
  %55 = load i64, i64* @ANYENUMOID, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %16, align 4
  br label %58

58:                                               ; preds = %57, %53
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* @UNKNOWNOID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %122

64:                                               ; preds = %59
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @OidIsValid(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %201

73:                                               ; preds = %68, %64
  %74 = load i64, i64* %18, align 8
  store i64 %74, i64* %9, align 8
  br label %121

75:                                               ; preds = %44
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* @ANYARRAYOID, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i64, i64* %18, align 8
  %81 = load i64, i64* @UNKNOWNOID, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %122

84:                                               ; preds = %79
  %85 = load i64, i64* %18, align 8
  %86 = call i64 @getBaseType(i64 %85)
  store i64 %86, i64* %18, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i64 @OidIsValid(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %201

95:                                               ; preds = %90, %84
  %96 = load i64, i64* %18, align 8
  store i64 %96, i64* %10, align 8
  br label %120

97:                                               ; preds = %75
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* @ANYRANGEOID, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* @UNKNOWNOID, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %122

106:                                              ; preds = %101
  %107 = load i64, i64* %18, align 8
  %108 = call i64 @getBaseType(i64 %107)
  store i64 %108, i64* %18, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i64 @OidIsValid(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i64, i64* %18, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %201

117:                                              ; preds = %112, %106
  %118 = load i64, i64* %18, align 8
  store i64 %118, i64* %12, align 8
  br label %119

119:                                              ; preds = %117, %97
  br label %120

120:                                              ; preds = %119, %95
  br label %121

121:                                              ; preds = %120, %73
  br label %122

122:                                              ; preds = %121, %105, %83, %63
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %22

125:                                              ; preds = %22
  %126 = load i64, i64* %10, align 8
  %127 = call i64 @OidIsValid(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %158

129:                                              ; preds = %125
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @ANYARRAYOID, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %201

137:                                              ; preds = %133
  store i32 1, i32* %4, align 4
  br label %201

138:                                              ; preds = %129
  %139 = load i64, i64* %10, align 8
  %140 = call i64 @get_element_type(i64 %139)
  store i64 %140, i64* %11, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call i64 @OidIsValid(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %201

145:                                              ; preds = %138
  %146 = load i64, i64* %9, align 8
  %147 = call i64 @OidIsValid(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = load i64, i64* %11, align 8
  store i64 %150, i64* %9, align 8
  br label %157

151:                                              ; preds = %145
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* %9, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %201

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %149
  br label %158

158:                                              ; preds = %157, %125
  %159 = load i64, i64* %12, align 8
  %160 = call i64 @OidIsValid(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %158
  %163 = load i64, i64* %12, align 8
  %164 = call i64 @get_range_subtype(i64 %163)
  store i64 %164, i64* %13, align 8
  %165 = load i64, i64* %13, align 8
  %166 = call i64 @OidIsValid(i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %201

169:                                              ; preds = %162
  %170 = load i64, i64* %9, align 8
  %171 = call i64 @OidIsValid(i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = load i64, i64* %13, align 8
  store i64 %174, i64* %9, align 8
  br label %181

175:                                              ; preds = %169
  %176 = load i64, i64* %13, align 8
  %177 = load i64, i64* %9, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i32 0, i32* %4, align 4
  br label %201

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %173
  br label %182

182:                                              ; preds = %181, %158
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i64, i64* %9, align 8
  %187 = call i64 @type_is_array_domain(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store i32 0, i32* %4, align 4
  br label %201

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %190, %182
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i64, i64* %9, align 8
  %196 = call i32 @type_is_enum(i64 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  store i32 0, i32* %4, align 4
  br label %201

199:                                              ; preds = %194
  br label %200

200:                                              ; preds = %199, %191
  store i32 1, i32* %4, align 4
  br label %201

201:                                              ; preds = %200, %198, %189, %179, %168, %155, %144, %137, %136, %116, %94, %72
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @getBaseType(i64) #1

declare dso_local i64 @get_element_type(i64) #1

declare dso_local i64 @get_range_subtype(i64) #1

declare dso_local i64 @type_is_array_domain(i64) #1

declare dso_local i32 @type_is_enum(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
