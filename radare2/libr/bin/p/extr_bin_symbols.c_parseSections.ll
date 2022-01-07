; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseSections.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseSections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@stringsBeginAt = common dso_local global i32 0, align 4
@r_bin_section_free = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32*)* @parseSections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parseSections(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @r_buf_size(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i8* @malloc(i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %128

28:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @stringsBeginAt, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32* @parseStrings(i32* %32, i32 %33, i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %31
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = call i32 @r_buf_read_at(i32* %41, i32 %42, i32* %44, i32 4)
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 95
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 16
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i64, i64* @r_bin_section_free, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32* @r_list_newf(i32 %56)
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @r_buf_read_at(i32* %58, i32 %59, i32* %61, i32 %62)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %115, %54
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %118

68:                                               ; preds = %64
  %69 = load i32, i32* %14, align 4
  %70 = mul nsw i32 %69, 16
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %118

76:                                               ; preds = %68
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call %struct.TYPE_3__* @r_list_get_n(i32* %80, i32 %81)
  br label %84

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi %struct.TYPE_3__* [ %82, %79 ], [ null, %83 ]
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %16, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %87 = icmp ne %struct.TYPE_3__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  br label %93

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i8* [ %91, %88 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %92 ]
  store i8* %94, i8** %17, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i64 @r_read_le32(i8* %98)
  store i64 %99, i64* %18, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = getelementptr inbounds i8, i8* %103, i64 4
  %105 = call i64 @r_read_le32(i8* %104)
  store i64 %105, i64* %19, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %19, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32* @newSection(i8* %106, i64 %107, i64 %110, i32 0)
  store i32* %111, i32** %20, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = call i32 @r_list_append(i32* %112, i32* %113)
  br label %115

115:                                              ; preds = %93
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %64

118:                                              ; preds = %75, %64
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @r_list_free(i32* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i32*, i32** %13, align 8
  store i32* %127, i32** %5, align 8
  br label %128

128:                                              ; preds = %124, %27
  %129 = load i32*, i32** %5, align 8
  ret i32* %129
}

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32* @parseStrings(i32*, i32, i32) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32* @r_list_newf(i32) #1

declare dso_local %struct.TYPE_3__* @r_list_get_n(i32*, i32) #1

declare dso_local i64 @r_read_le32(i8*) #1

declare dso_local i32* @newSection(i8*, i64, i64, i32) #1

declare dso_local i32 @r_list_append(i32*, i32*) #1

declare dso_local i32 @r_list_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
