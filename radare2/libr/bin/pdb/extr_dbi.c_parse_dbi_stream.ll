; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_dbi.c_parse_dbi_stream.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_dbi.c_parse_dbi_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@PDB_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_dbi_stream(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @parse_dbi_header(%struct.TYPE_4__* %16, i32* %17)
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 2
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @stream_file_seek(i32* %23, i32 %24, i32 0)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @malloc(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %122

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @stream_file_read(i32* %37, i32 %38, i8* %39)
  %41 = call i32 (...) @r_list_new()
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %72, %36
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = call i64 @malloc(i32 4)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %85

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @parse_dbi_ex_header(i8* %56, i32 %57, i32* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @PDB_ALIGN, align 4
  %62 = srem i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @PDB_ALIGN, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @PDB_ALIGN, align 4
  %69 = srem i32 %67, %68
  %70 = sub nsw i32 %66, %69
  %71 = add nsw i32 %65, %70
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %64, %55
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %9, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @r_list_append(i32 %82, i32* %83)
  br label %45

85:                                               ; preds = %54, %45
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @stream_file_seek(i32* %88, i32 %92, i32 1)
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @stream_file_seek(i32* %94, i32 %98, i32 1)
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @stream_file_seek(i32* %100, i32 %104, i32 1)
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @stream_file_seek(i32* %106, i32 %110, i32 1)
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @stream_file_seek(i32* %112, i32 %116, i32 1)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @parse_dbg_header(i32* %119, i32* %120)
  br label %122

122:                                              ; preds = %85, %35
  ret void
}

declare dso_local i32 @parse_dbi_header(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @stream_file_seek(i32*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stream_file_read(i32*, i32, i8*) #1

declare dso_local i32 @r_list_new(...) #1

declare dso_local i32 @parse_dbi_ex_header(i8*, i32, i32*) #1

declare dso_local i32 @r_list_append(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_dbg_header(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
