; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_replace_text_regexp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_replace_text_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@REGEXP_REPLACE_BACKREF_CNT = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@REG_OKAY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_REGULAR_EXPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"regular expression failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @replace_text_regexp(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [100 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @VARSIZE_ANY_EXHDR(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @REGEXP_REPLACE_BACKREF_CNT, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca %struct.TYPE_9__, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %33 = call i32 @initStringInfo(%struct.TYPE_10__* %12)
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i64 @palloc(i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @VARDATA_ANY(i32* %41)
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @pg_mb2wchar_with_len(i64 %42, i32* %43, i32 %44)
  store i64 %45, i64* %16, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @check_replace_text_has_escape_char(i32* %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @VARDATA_ANY(i32* %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %19, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %149, %4
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %16, align 8
  %55 = icmp ule i64 %53, %54
  br i1 %55, label %56, label %150

56:                                               ; preds = %51
  %57 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @REGEXP_REPLACE_BACKREF_CNT, align 4
  %63 = call i32 @pg_regexec(i32* %58, i32* %59, i64 %60, i32 %61, i32* null, i32 %62, %struct.TYPE_9__* %32, i32 0)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* @REG_NOMATCH, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %150

68:                                               ; preds = %56
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* @REG_OKAY, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %74 = load i32, i32* %21, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %77 = call i32 @pg_regerror(i32 %74, i32* %75, i8* %76, i32 100)
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_INVALID_REGULAR_EXPRESSION, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %82 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %81)
  %83 = call i32 @ereport(i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %72, %68
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 16
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %87, %88
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load i8*, i8** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 16
  %96 = load i32, i32* %18, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @charlen_to_bytelen(i8* %92, i32 %97)
  store i32 %98, i32* %23, align 4
  %99 = load i8*, i8** %19, align 8
  %100 = load i32, i32* %23, align 4
  %101 = call i32 @appendBinaryStringInfo(%struct.TYPE_10__* %12, i8* %99, i32 %100)
  %102 = load i32, i32* %23, align 4
  %103 = load i8*, i8** %19, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 16
  store i32 %108, i32* %18, align 4
  br label %109

109:                                              ; preds = %91, %84
  %110 = load i32, i32* %20, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32*, i32** %7, align 8
  %114 = load i8*, i8** %19, align 8
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @appendStringInfoRegexpSubstr(%struct.TYPE_10__* %12, i32* %113, %struct.TYPE_9__* %32, i8* %114, i32 %115)
  br label %120

117:                                              ; preds = %109
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @appendStringInfoText(%struct.TYPE_10__* %12, i32* %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i8*, i8** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %18, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i32 @charlen_to_bytelen(i8* %121, i32 %126)
  %128 = load i8*, i8** %19, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %120
  br label %150

137:                                              ; preds = %120
  %138 = load i32, i32* %18, align 4
  store i32 %138, i32* %17, align 4
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 16
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %149

149:                                              ; preds = %146, %137
  br label %51

150:                                              ; preds = %136, %67, %51
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %16, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %150
  %156 = load i32*, i32** %5, align 8
  %157 = bitcast i32* %156 to i8*
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @VARSIZE_ANY(i32* %158)
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  %162 = load i8*, i8** %19, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %24, align 4
  %167 = load i8*, i8** %19, align 8
  %168 = load i32, i32* %24, align 4
  %169 = call i32 @appendBinaryStringInfo(%struct.TYPE_10__* %12, i8* %167, i32 %168)
  br label %170

170:                                              ; preds = %155, %150
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32* @cstring_to_text_with_len(i32* %172, i32 %174)
  store i32* %175, i32** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @pfree(i32* %177)
  %179 = load i32*, i32** %15, align 8
  %180 = call i32 @pfree(i32* %179)
  %181 = load i32*, i32** %9, align 8
  %182 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %182)
  ret i32* %181
}

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @initStringInfo(%struct.TYPE_10__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @pg_mb2wchar_with_len(i64, i32*, i32) #1

declare dso_local i64 @VARDATA_ANY(i32*) #1

declare dso_local i32 @check_replace_text_has_escape_char(i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pg_regexec(i32*, i32*, i64, i32, i32*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @pg_regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @charlen_to_bytelen(i8*, i32) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @appendStringInfoRegexpSubstr(%struct.TYPE_10__*, i32*, %struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @appendStringInfoText(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @VARSIZE_ANY(i32*) #1

declare dso_local i32* @cstring_to_text_with_len(i32*, i32) #1

declare dso_local i32 @pfree(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
