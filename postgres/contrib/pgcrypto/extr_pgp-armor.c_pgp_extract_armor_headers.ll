; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pgp_extract_armor_headers.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pgp_extract_armor_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PXE_PGP_CORRUPT_ARMOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unexpected number of armor header lines\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_extract_armor_headers(i8* %0, i32 %1, i32* %2, i8*** %3, i8*** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i8***, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8*** %3, i8**** %10, align 8
  store i8*** %4, i8**** %11, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @find_header(i8* %30, i8* %31, i8** %15, i32 0)
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %22, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %36, i32* %6, align 4
  br label %183

37:                                               ; preds = %5
  %38 = load i32, i32* %22, align 4
  %39 = load i8*, i8** %15, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %15, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @find_header(i8* %42, i8* %43, i8** %16, i32 1)
  store i32 %44, i32* %22, align 4
  %45 = load i32, i32* %22, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %48, i32* %6, align 4
  br label %183

49:                                               ; preds = %37
  store i32 0, i32* %24, align 4
  %50 = load i8*, i8** %15, align 8
  store i8* %50, i8** %13, align 8
  br label %51

51:                                               ; preds = %80, %49
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i8*, i8** %13, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 10
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %13, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 13
  br label %65

65:                                               ; preds = %60, %55, %51
  %66 = phi i1 [ false, %55 ], [ false, %51 ], [ %64, %60 ]
  br i1 %66, label %67, label %85

67:                                               ; preds = %65
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @memchr(i8* %68, i8 signext 10, i32 %74)
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %79, i32* %6, align 4
  br label %183

80:                                               ; preds = %67
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %13, align 8
  %83 = load i32, i32* %24, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %24, align 4
  br label %51

85:                                               ; preds = %65
  %86 = load i8*, i8** %13, align 8
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i8* @palloc(i32 %94)
  store i8* %95, i8** %23, align 8
  %96 = load i8*, i8** %23, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @memcpy(i8* %96, i8* %97, i32 %98)
  %100 = load i8*, i8** %23, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i32, i32* %24, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 8
  %107 = trunc i64 %106 to i32
  %108 = call i8* @palloc(i32 %107)
  %109 = bitcast i8* %108 to i8**
  %110 = load i8***, i8**** %10, align 8
  store i8** %109, i8*** %110, align 8
  %111 = load i32, i32* %24, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 8
  %114 = trunc i64 %113 to i32
  %115 = call i8* @palloc(i32 %114)
  %116 = bitcast i8* %115 to i8**
  %117 = load i8***, i8**** %11, align 8
  store i8** %116, i8*** %117, align 8
  store i32 0, i32* %25, align 4
  %118 = load i8*, i8** %23, align 8
  store i8* %118, i8** %18, align 8
  br label %119

119:                                              ; preds = %156, %85
  %120 = load i8*, i8** %18, align 8
  %121 = call i8* @strchr(i8* %120, i8 signext 10)
  store i8* %121, i8** %20, align 8
  %122 = load i8*, i8** %20, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br label %173

125:                                              ; preds = %119
  %126 = load i8*, i8** %20, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  store i8* %127, i8** %19, align 8
  %128 = load i8*, i8** %20, align 8
  %129 = load i8*, i8** %18, align 8
  %130 = icmp ugt i8* %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load i8*, i8** %20, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 -1
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 13
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** %20, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 -1
  store i8* %139, i8** %20, align 8
  br label %140

140:                                              ; preds = %137, %131, %125
  %141 = load i8*, i8** %20, align 8
  store i8 0, i8* %141, align 1
  %142 = load i8*, i8** %18, align 8
  %143 = call i8* @strstr(i8* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %143, i8** %21, align 8
  %144 = load i8*, i8** %21, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %147, i32* %6, align 4
  br label %183

148:                                              ; preds = %140
  %149 = load i8*, i8** %21, align 8
  store i8 0, i8* %149, align 1
  %150 = load i32, i32* %25, align 4
  %151 = load i32, i32* %24, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* @ERROR, align 4
  %155 = call i32 @elog(i32 %154, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i8*, i8** %18, align 8
  %158 = load i8***, i8**** %10, align 8
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %25, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %157, i8** %162, align 8
  %163 = load i8*, i8** %21, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load i8***, i8**** %11, align 8
  %166 = load i8**, i8*** %165, align 8
  %167 = load i32, i32* %25, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  store i8* %164, i8** %169, align 8
  %170 = load i32, i32* %25, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %25, align 4
  %172 = load i8*, i8** %19, align 8
  store i8* %172, i8** %18, align 8
  br label %119

173:                                              ; preds = %124
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %24, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* @ERROR, align 4
  %179 = call i32 @elog(i32 %178, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %173
  %181 = load i32, i32* %25, align 4
  %182 = load i32*, i32** %9, align 8
  store i32 %181, i32* %182, align 4
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %180, %146, %78, %47, %35
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @find_header(i8*, i8*, i8**, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
