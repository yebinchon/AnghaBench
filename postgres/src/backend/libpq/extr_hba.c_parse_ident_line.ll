; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_parse_ident_line.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_parse_ident_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }

@NIL = common dso_local global i64 0, align 8
@REG_ADVANCED = common dso_local global i32 0, align 4
@C_COLLATION_OID = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@ERRCODE_INVALID_REGULAR_EXPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid regular expression \22%s\22: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_8__*)* @parse_ident_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @parse_ident_line(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [100 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NIL, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32* @list_head(i64 %25)
  store i32* %26, i32** %5, align 8
  %27 = call %struct.TYPE_9__* @palloc0(i32 40)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %8, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @lfirst(i32* %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @IDENT_MULTI_VALUE(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call %struct.TYPE_10__* @linitial(i32* %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %7, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @pstrdup(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32* @lnext(i64 %45, i32* %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @IDENT_FIELD_ABSENT(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32* @lfirst(i32* %50)
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @IDENT_MULTI_VALUE(i32* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call %struct.TYPE_10__* @linitial(i32* %54)
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %7, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @pstrdup(i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32* @lnext(i64 %64, i32* %65)
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @IDENT_FIELD_ABSENT(i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32* @lfirst(i32* %69)
  store i32* %70, i32** %6, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @IDENT_MULTI_VALUE(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call %struct.TYPE_10__* @linitial(i32* %73)
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %7, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @pstrdup(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %88, label %140

88:                                               ; preds = %1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = call i32 @strlen(i8* %92)
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i32* @palloc(i32 %97)
  store i32* %98, i32** %10, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = call i32 @strlen(i8* %107)
  %109 = call i32 @pg_mb2wchar_with_len(i8* %102, i32* %103, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @REG_ADVANCED, align 4
  %115 = load i32, i32* @C_COLLATION_OID, align 4
  %116 = call i32 @pg_regcomp(i32* %111, i32* %112, i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %88
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %124 = call i32 @pg_regerror(i32 %120, i32* %122, i8* %123, i32 100)
  %125 = load i32, i32* @LOG, align 4
  %126 = load i32, i32* @ERRCODE_INVALID_REGULAR_EXPRESSION, align 4
  %127 = call i32 @errcode(i32 %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %133 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %131, i8* %132)
  %134 = call i32 @ereport(i32 %125, i32 %133)
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @pfree(i32* %135)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %142

137:                                              ; preds = %88
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @pfree(i32* %138)
  br label %140

140:                                              ; preds = %137, %1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %2, align 8
  br label %142

142:                                              ; preds = %140, %119
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %143
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @list_head(i64) #1

declare dso_local %struct.TYPE_9__* @palloc0(i32) #1

declare dso_local i32* @lfirst(i32*) #1

declare dso_local i32 @IDENT_MULTI_VALUE(i32*) #1

declare dso_local %struct.TYPE_10__* @linitial(i32*) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32* @lnext(i64, i32*) #1

declare dso_local i32 @IDENT_FIELD_ABSENT(i32*) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pg_mb2wchar_with_len(i8*, i32*, i32) #1

declare dso_local i32 @pg_regcomp(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pg_regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
