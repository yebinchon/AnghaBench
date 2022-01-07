; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_parse_mime.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_parse_mime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.r_magic_entry = type { i32, %struct.r_magic* }
%struct.r_magic = type { i8*, i8* }

@.str = private unnamed_addr constant [31 x i8] c"No current entry for MIME type\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Current entry already has a MIME type: %s\0ADescription: %s\0ANew type: %s\00", align 1
@EATAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"-+/.\00", align 1
@R_MAGIC_CHECK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"MIME type `%s' truncated %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.r_magic_entry**, i32*, i8*)* @parse_mime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mime(%struct.TYPE_5__* %0, %struct.r_magic_entry** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.r_magic_entry**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.r_magic*, align 8
  %13 = alloca %struct.r_magic_entry*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.r_magic_entry** %1, %struct.r_magic_entry*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @file_error(%struct.TYPE_5__* %19, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %136

21:                                               ; preds = %4
  %22 = load %struct.r_magic_entry**, %struct.r_magic_entry*** %7, align 8
  %23 = load %struct.r_magic_entry*, %struct.r_magic_entry** %22, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.r_magic_entry, %struct.r_magic_entry* %23, i64 %27
  store %struct.r_magic_entry* %28, %struct.r_magic_entry** %13, align 8
  %29 = load %struct.r_magic_entry*, %struct.r_magic_entry** %13, align 8
  %30 = getelementptr inbounds %struct.r_magic_entry, %struct.r_magic_entry* %29, i32 0, i32 1
  %31 = load %struct.r_magic*, %struct.r_magic** %30, align 8
  %32 = load %struct.r_magic_entry*, %struct.r_magic_entry** %13, align 8
  %33 = getelementptr inbounds %struct.r_magic_entry, %struct.r_magic_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %42

37:                                               ; preds = %21
  %38 = load %struct.r_magic_entry*, %struct.r_magic_entry** %13, align 8
  %39 = getelementptr inbounds %struct.r_magic_entry, %struct.r_magic_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi i32 [ 0, %36 ], [ %41, %37 ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %31, i64 %44
  store %struct.r_magic* %45, %struct.r_magic** %12, align 8
  %46 = load %struct.r_magic*, %struct.r_magic** %12, align 8
  %47 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = load %struct.r_magic*, %struct.r_magic** %12, align 8
  %56 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.r_magic*, %struct.r_magic** %12, align 8
  %59 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @file_error(%struct.TYPE_5__* %54, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %60, i8* %61)
  store i32 -1, i32* %5, align 4
  br label %136

63:                                               ; preds = %42
  %64 = load i32, i32* @EATAB, align 4
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %93, %63
  %66 = load i8*, i8** %11, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = call i64 @isascii(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i64 @isalnum(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %76, %70
  %83 = load i8*, i8** %11, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %76
  %88 = load i64, i64* %10, align 8
  %89 = icmp ult i64 %88, 8
  br label %90

90:                                               ; preds = %87, %82, %65
  %91 = phi i1 [ false, %82 ], [ false, %65 ], [ %89, %87 ]
  br i1 %91, label %92, label %103

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92
  %94 = load i8*, i8** %11, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %11, align 8
  %96 = load i8, i8* %94, align 1
  %97 = load %struct.r_magic*, %struct.r_magic** %12, align 8
  %98 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %10, align 8
  %102 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %96, i8* %102, align 1
  br label %65

103:                                              ; preds = %90
  %104 = load i64, i64* %10, align 8
  %105 = icmp eq i64 %104, 8
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = load %struct.r_magic*, %struct.r_magic** %12, align 8
  %108 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 7
  store i8 0, i8* %110, align 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @R_MAGIC_CHECK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %106
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = load %struct.r_magic*, %struct.r_magic** %12, align 8
  %120 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @file_magwarn(%struct.TYPE_5__* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %121, i64 %122)
  br label %124

124:                                              ; preds = %117, %106
  br label %131

125:                                              ; preds = %103
  %126 = load %struct.r_magic*, %struct.r_magic** %12, align 8
  %127 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8 0, i8* %130, align 1
  br label %131

131:                                              ; preds = %125, %124
  %132 = load i64, i64* %10, align 8
  %133 = icmp ugt i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 0, i32 -1
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %53, %18
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @file_error(%struct.TYPE_5__*, i32, i8*, ...) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isalnum(i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @file_magwarn(%struct.TYPE_5__*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
