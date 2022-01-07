; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_tokenize_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_tokenize_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32, %struct.TYPE_9__* }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tokenize_file\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@NIL = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_LINE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %s\00", align 1
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"authentication file line too long\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"line %d of configuration file \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_9__**, i32)* @tokenize_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tokenize_file(i8* %0, i32* %1, %struct.TYPE_9__** %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %21 = load i32, i32* @CurrentMemoryContext, align 4
  %22 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %23 = call i32 @AllocSetContextCreate(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @MemoryContextSwitchTo(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NIL, align 8
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %27, align 8
  br label %28

28:                                               ; preds = %161, %4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @feof(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @ferror(i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ false, %28 ], [ %36, %32 ]
  br i1 %38, label %39, label %162

39:                                               ; preds = %37
  %40 = load i32, i32* @MAX_LINE, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %12, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %13, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NIL, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %15, align 8
  store i8* null, i8** %16, align 8
  %45 = trunc i64 %41 to i32
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @fgets(i8* %43, i32 %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @errno, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @ferror(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 3, i32* %18, align 4
  br label %158

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (...) @errcode_for_file_access()
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = call i32 @ereport(i32 %56, i32 %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @strerror(i32 %62)
  %64 = call i8* @psprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %61, i32 %63)
  store i8* %64, i8** %16, align 8
  %65 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %65, align 16
  br label %66

66:                                               ; preds = %55, %39
  %67 = call i32 @strlen(i8* %43)
  %68 = load i32, i32* @MAX_LINE, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %9, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @errcontext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %76, i8* %77)
  %79 = call i32 @ereport(i32 %72, i32 %78)
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %80

80:                                               ; preds = %71, %66
  %81 = call i32 @strlen(i8* %43)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %43, i64 %82
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  store i8* %84, i8** %14, align 8
  br label %85

85:                                               ; preds = %102, %80
  %86 = load i8*, i8** %14, align 8
  %87 = icmp uge i8* %86, %43
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i8*, i8** %14, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 10
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %14, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 13
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ true, %88 ], [ %97, %93 ]
  br label %100

100:                                              ; preds = %98, %85
  %101 = phi i1 [ false, %85 ], [ %99, %98 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %14, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %14, align 8
  store i8 0, i8* %103, align 1
  br label %85

105:                                              ; preds = %100
  store i8* %43, i8** %14, align 8
  br label %106

106:                                              ; preds = %127, %105
  %107 = load i8*, i8** %14, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i8*, i8** %16, align 8
  %113 = icmp eq i8* %112, null
  br label %114

114:                                              ; preds = %111, %106
  %115 = phi i1 [ false, %106 ], [ %113, %111 ]
  br i1 %115, label %116, label %128

116:                                              ; preds = %114
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call %struct.TYPE_9__* @next_field_expand(i8* %117, i8** %14, i32 %118, i8** %16)
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %19, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NIL, align 8
  %122 = icmp ne %struct.TYPE_9__* %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %126 = call %struct.TYPE_9__* @lappend(%struct.TYPE_9__* %124, %struct.TYPE_9__* %125)
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %15, align 8
  br label %127

127:                                              ; preds = %123, %116
  br label %106

128:                                              ; preds = %114
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NIL, align 8
  %131 = icmp ne %struct.TYPE_9__* %129, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %16, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %155

135:                                              ; preds = %132, %128
  %136 = call i64 @palloc(i32 32)
  %137 = inttoptr i64 %136 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %137, %struct.TYPE_9__** %20, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %140, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = call i32 @pstrdup(i8* %43)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %153 = call %struct.TYPE_9__* @lappend(%struct.TYPE_9__* %151, %struct.TYPE_9__* %152)
  %154 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %153, %struct.TYPE_9__** %154, align 8
  br label %155

155:                                              ; preds = %135, %132
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  store i32 0, i32* %18, align 4
  br label %158

158:                                              ; preds = %155, %54
  %159 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load i32, i32* %18, align 4
  switch i32 %160, label %166 [
    i32 0, label %161
    i32 3, label %162
  ]

161:                                              ; preds = %158
  br label %28

162:                                              ; preds = %158, %37
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @MemoryContextSwitchTo(i32 %163)
  %165 = load i32, i32* %10, align 4
  ret i32 %165

166:                                              ; preds = %158
  unreachable
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @ferror(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i8* @psprintf(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errcontext(i8*, i32, i8*) #1

declare dso_local %struct.TYPE_9__* @next_field_expand(i8*, i8**, i32, i8**) #1

declare dso_local %struct.TYPE_9__* @lappend(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pstrdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
