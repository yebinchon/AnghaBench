; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_varstr_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_varstr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@TEXTBUFLEN = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unsupported collprovider: %c\00", align 1
@COLLPROVIDER_LIBC = common dso_local global i64 0, align 8
@CP_UTF8 = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i64 0, align 8
@U_ZERO_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @varstr_cmp(i8* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @check_collation_set(i64 %20)
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @lc_collate_is_c(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %5
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @Min(i32 %28, i32 %29)
  %31 = call i32 @memcmp(i8* %26, i8* %27, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 -1, i32 1
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %38, %34, %25
  br label %162

45:                                               ; preds = %5
  %46 = load i32, i32* @TEXTBUFLEN, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %13, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %14, align 8
  %50 = load i32, i32* @TEXTBUFLEN, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %15, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %18, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i64, i64* %11, align 8
  %58 = call %struct.TYPE_7__* @pg_newlocale_from_collation(i64 %57)
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %18, align 8
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memcmp(i8* %64, i8* %65, i32 %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %158

70:                                               ; preds = %63, %59
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @TEXTBUFLEN, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i8* @palloc(i32 %76)
  store i8* %77, i8** %16, align 8
  br label %79

78:                                               ; preds = %70
  store i8* %49, i8** %16, align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @TEXTBUFLEN, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i8* @palloc(i32 %85)
  store i8* %86, i8** %17, align 8
  br label %88

87:                                               ; preds = %79
  store i8* %52, i8** %17, align 8
  br label %88

88:                                               ; preds = %87, %83
  %89 = load i8*, i8** %16, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @memcpy(i8* %89, i8* %90, i32 %91)
  %93 = load i8*, i8** %16, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %17, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @memcpy(i8* %97, i8* %98, i32 %99)
  %101 = load i8*, i8** %17, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %106 = icmp ne %struct.TYPE_7__* %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %88
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @COLLPROVIDER_ICU, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* @ERROR, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @elog(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %117)
  br label %125

119:                                              ; preds = %107
  %120 = load i32, i32* @ERROR, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @elog(i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %123)
  br label %125

125:                                              ; preds = %119, %113
  br label %130

126:                                              ; preds = %88
  %127 = load i8*, i8** %16, align 8
  %128 = load i8*, i8** %17, align 8
  %129 = call i32 @strcoll(i8* %127, i8* %128)
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %125
  %131 = load i32, i32* %12, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %135 = icmp ne %struct.TYPE_7__* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136, %133
  %142 = load i8*, i8** %16, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = call i32 @strcmp(i8* %142, i8* %143)
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %141, %136, %130
  %146 = load i8*, i8** %16, align 8
  %147 = icmp ne i8* %146, %49
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 @pfree(i8* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i8*, i8** %17, align 8
  %153 = icmp ne i8* %152, %52
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i8*, i8** %17, align 8
  %156 = call i32 @pfree(i8* %155)
  br label %157

157:                                              ; preds = %154, %151
  store i32 0, i32* %19, align 4
  br label %158

158:                                              ; preds = %157, %69
  %159 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load i32, i32* %19, align 4
  switch i32 %160, label %166 [
    i32 0, label %161
    i32 1, label %164
  ]

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %161, %44
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %162, %158
  %165 = load i32, i32* %6, align 4
  ret i32 %165

166:                                              ; preds = %158
  unreachable
}

declare dso_local i32 @check_collation_set(i64) #1

declare dso_local i64 @lc_collate_is_c(i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @Min(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_7__* @pg_newlocale_from_collation(i64) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @strcoll(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
