; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__tarAddFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__tarAddFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i64 }

@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"could not determine seek position in archive file: %m\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@WRITE_ERROR_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not close temporary file: %m\00", align 1
@INT64_FORMAT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"actual file length (%s) does not match expected (%s)\00", align 1
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*)* @_tarAddFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_tarAddFile(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [32768 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca [32 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  store i64 0, i64* %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @SEEK_END, align 4
  %24 = call i32 @fseeko(i32* %22, i32 0, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @ftello(i32* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %2
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @fseeko(i32* %36, i32 0, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = call i32 @_tarWriteHeader(%struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %57, %35
  %42 = getelementptr inbounds [32768 x i8], [32768 x i8]* %7, i64 0, i64 0
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @fread(i8* %42, i32 1, i32 32768, i32* %43)
  store i64 %44, i64* %8, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = getelementptr inbounds [32768 x i8], [32768 x i8]* %7, i64 0, i64 0
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @fwrite(i8* %47, i32 1, i64 %48, i32 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @WRITE_ERROR_EXIT, align 4
  br label %57

57:                                               ; preds = %55, %46
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %9, align 8
  br label %41

61:                                               ; preds = %41
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @feof(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @READ_ERROR_EXIT(i32* %66)
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @fclose(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %82 = load i8*, i8** @INT64_FORMAT, align 8
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @snprintf(i8* %81, i32 32, i8* %82, i32 %84)
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %87 = load i8*, i8** @INT64_FORMAT, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @snprintf(i8* %86, i32 32, i8* %87, i32 %91)
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %95 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %93, i8* %94)
  br label %96

96:                                               ; preds = %80, %74
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, 511
  %99 = and i64 %98, -512
  %100 = load i64, i64* %9, align 8
  %101 = sub i64 %99, %100
  store i64 %101, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %102

102:                                              ; preds = %116, %96
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @fputc(i8 signext 0, i32 %109)
  %111 = load i64, i64* @EOF, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @WRITE_ERROR_EXIT, align 4
  br label %115

115:                                              ; preds = %113, %106
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %11, align 8
  br label %102

119:                                              ; preds = %102
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %120, %121
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, %122
  store i64 %126, i64* %124, align 8
  ret void
}

declare dso_local i32 @fseeko(i32*, i32, i32) #1

declare dso_local i64 @ftello(i32*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @_tarWriteHeader(%struct.TYPE_8__*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @READ_ERROR_EXIT(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
