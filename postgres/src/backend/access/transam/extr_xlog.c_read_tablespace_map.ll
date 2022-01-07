; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_read_tablespace_map.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_read_tablespace_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@TABLESPACE_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %n\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid data in file \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @read_tablespace_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tablespace_map(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  %15 = load i32, i32* @MAXPGPATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @MAXPGPATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* @TABLESPACE_MAP, align 4
  %23 = call i32* @AllocateFile(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @ENOENT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @FATAL, align 4
  %32 = call i32 (...) @errcode_for_file_access()
  %33 = load i32, i32* @TABLESPACE_MAP, align 4
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @ereport(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %26
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %123

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %106, %65, %37
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @fgetc(i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @EOF, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %108

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %49, label %82

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 92
  br i1 %51, label %52, label %82

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %21, i64 %54
  store i8 0, i8* %55, align 1
  %56 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %18, i32* %13)
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* @FATAL, align 4
  %60 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = load i32, i32* @TABLESPACE_MAP, align 4
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = call i32 @ereport(i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %58, %52
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %21, i64 %67
  store i8* %68, i8** %8, align 8
  store i32 0, i32* %12, align 4
  %69 = call %struct.TYPE_4__* @palloc(i32 16)
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %4, align 8
  %70 = call i8* @pstrdup(i8* %18)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i8* @pstrdup(i8* %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32**, i32*** %3, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = call i32* @lappend(i32* %78, %struct.TYPE_4__* %79)
  %81 = load i32**, i32*** %3, align 8
  store i32* %80, i32** %81, align 8
  br label %38

82:                                               ; preds = %49, %46
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 13
  br i1 %87, label %88, label %98

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 92
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = trunc i32 %92 to i8
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %21, i64 %96
  store i8 %93, i8* %97, align 1
  br label %105

98:                                               ; preds = %88, %85
  %99 = load i32, i32* %10, align 4
  %100 = trunc i32 %99 to i8
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %21, i64 %103
  store i8 %100, i8* %104, align 1
  br label %105

105:                                              ; preds = %98, %91
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %11, align 4
  br label %38

108:                                              ; preds = %38
  %109 = load i32*, i32** %5, align 8
  %110 = call i64 @ferror(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32*, i32** %5, align 8
  %114 = call i64 @FreeFile(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112, %108
  %117 = load i32, i32* @FATAL, align 4
  %118 = call i32 (...) @errcode_for_file_access()
  %119 = load i32, i32* @TABLESPACE_MAP, align 4
  %120 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = call i32 @ereport(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %112
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %123

123:                                              ; preds = %122, %36
  %124 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @AllocateFile(i32, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @fgetc(i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local %struct.TYPE_4__* @palloc(i32) #2

declare dso_local i8* @pstrdup(i8*) #2

declare dso_local i32* @lappend(i32*, %struct.TYPE_4__*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i64 @FreeFile(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
