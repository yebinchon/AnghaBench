; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pgp_armor_decode.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_pgp_armor_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@PXE_PGP_CORRUPT_ARMOR = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"overflow - decode estimate too small\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_armor_decode(i8* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [4 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %8, align 8
  store i8* null, i8** %12, align 8
  %22 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @find_header(i8* %23, i8* %24, i8** %7, i32 0)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %162

29:                                               ; preds = %3
  %30 = load i32, i32* %14, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @find_header(i8* %34, i8* %35, i8** %11, i32 1)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %162

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %69, %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 13
  br label %55

55:                                               ; preds = %50, %45, %41
  %56 = phi i1 [ false, %45 ], [ false, %41 ], [ %54, %50 ]
  br i1 %56, label %57, label %72

57:                                               ; preds = %55
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i8* @memchr(i8* %58, i8 signext 10, i32 %64)
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %57
  br label %162

69:                                               ; preds = %57
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  br label %41

72:                                               ; preds = %55
  %73 = load i8*, i8** %7, align 8
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  store i8* %74, i8** %7, align 8
  br label %75

75:                                               ; preds = %88, %72
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp uge i8* %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 61
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  store i8* %86, i8** %12, align 8
  br label %91

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %90, i8** %7, align 8
  br label %75

91:                                               ; preds = %84, %75
  %92 = load i8*, i8** %12, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %162

95:                                               ; preds = %91
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %99 = call i32 @pg_base64_decode(i8* %97, i32 4, i8* %98)
  %100 = icmp ne i32 %99, 3
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %162

102:                                              ; preds = %95
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i64
  %106 = shl i64 %105, 16
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i64
  %110 = shl i64 %109, 8
  %111 = add nsw i64 %106, %110
  %112 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i64
  %115 = add nsw i64 %111, %114
  store i64 %115, i64* %9, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i64 @pg_base64_dec_len(i32 %116)
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %15, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @enlargeStringInfo(%struct.TYPE_4__* %119, i32 %120)
  %122 = load i8*, i8** %10, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @pg_base64_decode(i8* %122, i32 %128, i8* %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %102
  %138 = load i32, i32* @FATAL, align 4
  %139 = call i32 @elog(i32 %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %102
  %141 = load i32, i32* %16, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %140
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i8*
  %148 = load i32, i32* %16, align 4
  %149 = call i64 @crc24(i8* %147, i32 %148)
  %150 = load i64, i64* %9, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %143
  %153 = load i32, i32* %16, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %160

158:                                              ; preds = %143
  %159 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %159, i32* %16, align 4
  br label %160

160:                                              ; preds = %158, %152
  br label %161

161:                                              ; preds = %160, %140
  br label %162

162:                                              ; preds = %161, %101, %94, %68, %39, %28
  %163 = load i32, i32* %16, align 4
  ret i32 %163
}

declare dso_local i32 @find_header(i8*, i8*, i8**, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @pg_base64_decode(i8*, i32, i8*) #1

declare dso_local i64 @pg_base64_dec_len(i32) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @crc24(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
