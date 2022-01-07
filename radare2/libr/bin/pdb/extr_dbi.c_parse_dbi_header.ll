; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_dbi.c_parse_dbi_header.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_dbi.c_parse_dbi_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @parse_dbi_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_dbi_header(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 19
  %8 = bitcast i32* %7 to i8*
  %9 = call i32 @stream_file_read(i32* %5, i32 4, i8* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 18
  %13 = bitcast i32* %12 to i8*
  %14 = call i32 @stream_file_read(i32* %10, i32 4, i8* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 17
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @stream_file_read(i32* %15, i32 4, i8* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 16
  %23 = bitcast i32* %22 to i8*
  %24 = call i32 @stream_file_read(i32* %20, i32 4, i8* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 15
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @stream_file_read(i32* %25, i32 4, i8* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 14
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @stream_file_read(i32* %30, i32 4, i8* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 13
  %38 = bitcast i32* %37 to i8*
  %39 = call i32 @stream_file_read(i32* %35, i32 4, i8* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 12
  %43 = bitcast i32* %42 to i8*
  %44 = call i32 @stream_file_read(i32* %40, i32 4, i8* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 11
  %48 = bitcast i32* %47 to i8*
  %49 = call i32 @stream_file_read(i32* %45, i32 4, i8* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 10
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @stream_file_read(i32* %50, i32 4, i8* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 9
  %58 = bitcast i32* %57 to i8*
  %59 = call i32 @stream_file_read(i32* %55, i32 4, i8* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 8
  %63 = bitcast i32* %62 to i8*
  %64 = call i32 @stream_file_read(i32* %60, i32 4, i8* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 7
  %68 = bitcast i32* %67 to i8*
  %69 = call i32 @stream_file_read(i32* %65, i32 4, i8* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  %73 = bitcast i32* %72 to i8*
  %74 = call i32 @stream_file_read(i32* %70, i32 4, i8* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = bitcast i32* %77 to i8*
  %79 = call i32 @stream_file_read(i32* %75, i32 4, i8* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @stream_file_read(i32* %80, i32 4, i8* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = bitcast i32* %87 to i8*
  %89 = call i32 @stream_file_read(i32* %85, i32 4, i8* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = bitcast i32* %92 to i8*
  %94 = call i32 @stream_file_read(i32* %90, i32 4, i8* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = bitcast i32* %97 to i8*
  %99 = call i32 @stream_file_read(i32* %95, i32 2, i8* %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = bitcast i32* %102 to i8*
  %104 = call i32 @stream_file_read(i32* %100, i32 4, i8* %103)
  ret void
}

declare dso_local i32 @stream_file_read(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
