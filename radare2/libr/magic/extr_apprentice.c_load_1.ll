; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_load_1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_load_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.r_magic_entry = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot read magic file `%s'\00", align 1
@mime_marker_len = common dso_local global i64 0, align 8
@mime_marker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i8*, i32*, %struct.r_magic_entry**, i32*)* @load_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_1(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32* %3, %struct.r_magic_entry** %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.r_magic_entry**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.r_magic_entry** %4, %struct.r_magic_entry*** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* @BUFSIZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = call i32* @r_sandbox_fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = load i64, i64* @errno, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @file_error(%struct.TYPE_6__* %33, i64 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %122

41:                                               ; preds = %6
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %114, %41
  %45 = trunc i64 %19 to i32
  %46 = load i32*, i32** %16, align 8
  %47 = call i32* @fgets(i8* %21, i32 %45, i32* %46)
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %119

49:                                               ; preds = %44
  %50 = call i64 @strlen(i8* %21)
  store i64 %50, i64* %17, align 8
  %51 = load i64, i64* %17, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %114

54:                                               ; preds = %49
  %55 = load i64, i64* %17, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %21, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %17, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds i8, i8* %21, i64 %65
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %61, %54
  %68 = getelementptr inbounds i8, i8* %21, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %114

73:                                               ; preds = %67
  %74 = getelementptr inbounds i8, i8* %21, i64 0
  %75 = load i8, i8* %74, align 16
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 35
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %114

79:                                               ; preds = %73
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* @mime_marker_len, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load i32, i32* @mime_marker, align 4
  %85 = load i64, i64* @mime_marker_len, align 8
  %86 = call i64 @memcmp(i8* %21, i32 %84, i64 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = load %struct.r_magic_entry**, %struct.r_magic_entry*** %11, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i64, i64* @mime_marker_len, align 8
  %93 = getelementptr inbounds i8, i8* %21, i64 %92
  %94 = call i64 @parse_mime(%struct.TYPE_6__* %89, %struct.r_magic_entry** %90, i32* %91, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %96, %88
  br label %114

101:                                              ; preds = %83, %79
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = load %struct.r_magic_entry**, %struct.r_magic_entry*** %11, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @parse(%struct.TYPE_6__* %102, %struct.r_magic_entry** %103, i32* %104, i8* %21, i64 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %109, %101
  br label %114

114:                                              ; preds = %113, %100, %78, %72, %53
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %44

119:                                              ; preds = %44
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @fclose(i32* %120)
  br label %122

122:                                              ; preds = %119, %37
  %123 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @r_sandbox_fopen(i8*, i8*) #2

declare dso_local i32 @file_error(%struct.TYPE_6__*, i64, i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @memcmp(i8*, i32, i64) #2

declare dso_local i64 @parse_mime(%struct.TYPE_6__*, %struct.r_magic_entry**, i32*, i8*) #2

declare dso_local i64 @parse(%struct.TYPE_6__*, %struct.r_magic_entry**, i32*, i8*, i64, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
