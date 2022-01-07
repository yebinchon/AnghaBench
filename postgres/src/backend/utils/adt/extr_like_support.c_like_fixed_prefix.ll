; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_like_fixed_prefix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_like_fixed_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@BYTEAOID = common dso_local global i64 0, align 8
@TEXTOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"case insensitive matching not supported on type bytea\00", align 1
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@ERRCODE_INDETERMINATE_COLLATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"could not determine which collation to use for ILIKE\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Use the COLLATE clause to set the collation explicitly.\00", align 1
@Pattern_Prefix_Exact = common dso_local global i32 0, align 4
@Pattern_Prefix_Partial = common dso_local global i32 0, align 4
@Pattern_Prefix_None = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i64, %struct.TYPE_6__**, i32*)* @like_fixed_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @like_fixed_prefix(%struct.TYPE_6__* %0, i32 %1, i64 %2, %struct.TYPE_6__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %15, align 8
  %25 = call i32 (...) @pg_database_encoding_max_length()
  %26 = icmp sgt i32 %25, 1
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* @BYTEAOID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* @TEXTOID, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %31, %5
  %36 = phi i1 [ true, %5 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* @BYTEAOID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @lc_ctype_is_c(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %20, align 4
  br label %75

56:                                               ; preds = %51
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @OidIsValid(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* @ERRCODE_INDETERMINATE_COLLATION, align 4
  %67 = call i32 @errcode(i32 %66)
  %68 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @ereport(i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %64, %60
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @pg_newlocale_from_collation(i64 %72)
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %71, %56
  br label %75

75:                                               ; preds = %74, %55
  br label %76

76:                                               ; preds = %75, %35
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* @BYTEAOID, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @TextDatumGetCString(i32 %83)
  store i8* %84, i8** %13, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @strlen(i8* %85)
  store i32 %86, i32* %14, align 4
  br label %110

87:                                               ; preds = %76
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32* @DatumGetByteaPP(i32 %90)
  store i32* %91, i32** %21, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = call i32 @VARSIZE_ANY_EXHDR(i32* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i8* @palloc(i32 %94)
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i32*, i32** %21, align 8
  %98 = call i32 @VARDATA_ANY(i32* %97)
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @memcpy(i8* %96, i32 %98, i32 %99)
  %101 = load i32*, i32** %21, align 8
  %102 = ptrtoint i32* %101 to i64
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @DatumGetPointer(i32 %105)
  %107 = icmp eq i64 %102, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @Assert(i32 %108)
  br label %110

110:                                              ; preds = %87, %80
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i8* @palloc(i32 %112)
  store i8* %113, i8** %12, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %114

114:                                              ; preds = %177, %110
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %180

118:                                              ; preds = %114
  %119 = load i8*, i8** %13, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 37
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load i8*, i8** %13, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 95
  br i1 %133, label %134, label %135

134:                                              ; preds = %126, %118
  br label %180

135:                                              ; preds = %126
  %136 = load i8*, i8** %13, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 92
  br i1 %142, label %143, label %151

143:                                              ; preds = %135
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %180

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load i8*, i8** %13, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = call i64 @pattern_char_isalpha(i8 signext %159, i32 %160, i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %180

166:                                              ; preds = %154, %151
  %167 = load i8*, i8** %13, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = load i8*, i8** %12, align 8
  %173 = load i32, i32* %17, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %17, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  store i8 %171, i8* %176, align 1
  br label %177

177:                                              ; preds = %166
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %114

180:                                              ; preds = %165, %149, %134, %114
  %181 = load i8*, i8** %12, align 8
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  store i8 0, i8* %184, align 1
  %185 = load i64, i64* %15, align 8
  %186 = load i64, i64* @BYTEAOID, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %180
  %189 = load i8*, i8** %12, align 8
  %190 = load i64, i64* %15, align 8
  %191 = call %struct.TYPE_6__* @string_to_const(i8* %189, i64 %190)
  %192 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  store %struct.TYPE_6__* %191, %struct.TYPE_6__** %192, align 8
  br label %198

193:                                              ; preds = %180
  %194 = load i8*, i8** %12, align 8
  %195 = load i32, i32* %17, align 4
  %196 = call %struct.TYPE_6__* @string_to_bytea_const(i8* %194, i32 %195)
  %197 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  store %struct.TYPE_6__* %196, %struct.TYPE_6__** %197, align 8
  br label %198

198:                                              ; preds = %193, %188
  %199 = load i32*, i32** %11, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %212

201:                                              ; preds = %198
  %202 = load i8*, i8** %13, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %16, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @like_selectivity(i8* %205, i32 %208, i32 %209)
  %211 = load i32*, i32** %11, align 8
  store i32 %210, i32* %211, align 4
  br label %212

212:                                              ; preds = %201, %198
  %213 = load i8*, i8** %13, align 8
  %214 = call i32 @pfree(i8* %213)
  %215 = load i8*, i8** %12, align 8
  %216 = call i32 @pfree(i8* %215)
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %14, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %212
  %221 = load i32, i32* @Pattern_Prefix_Exact, align 4
  store i32 %221, i32* %6, align 4
  br label %229

222:                                              ; preds = %212
  %223 = load i32, i32* %17, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load i32, i32* @Pattern_Prefix_Partial, align 4
  store i32 %226, i32* %6, align 4
  br label %229

227:                                              ; preds = %222
  %228 = load i32, i32* @Pattern_Prefix_None, align 4
  store i32 %228, i32* %6, align 4
  br label %229

229:                                              ; preds = %227, %225, %220
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @lc_ctype_is_c(i64) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @pg_newlocale_from_collation(i64) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @DatumGetByteaPP(i32) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i64 @pattern_char_isalpha(i8 signext, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @string_to_const(i8*, i64) #1

declare dso_local %struct.TYPE_6__* @string_to_bytea_const(i8*, i32) #1

declare dso_local i32 @like_selectivity(i8*, i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
