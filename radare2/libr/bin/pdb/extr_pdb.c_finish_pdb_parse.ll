; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_finish_pdb_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_finish_pdb_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, i32 (%struct.TYPE_14__*)*, i64, %struct.TYPE_14__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @finish_pdb_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_pdb_parse(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %151

18:                                               ; preds = %1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32* @r_list_iterator(i64 %21)
  store i32* %22, i32** %4, align 8
  br label %23

23:                                               ; preds = %27, %18
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @r_list_iter_next(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @r_list_iter_get(i32* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %5, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = call i32 @free(%struct.TYPE_14__* %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call i32 @free(%struct.TYPE_14__* %37)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @r_list_free(i64 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = call i32 @free(%struct.TYPE_14__* %46)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  store i32 0, i32* %11, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32* @r_list_iterator(i64 %50)
  store i32* %51, i32** %4, align 8
  br label %52

52:                                               ; preds = %99, %39
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @r_list_iter_next(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %82 [
    i32 1, label %58
    i32 2, label %66
    i32 3, label %74
  ]

58:                                               ; preds = %56
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @r_list_iter_get(i32* %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %6, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = call i32 @free_pdb_stream(%struct.TYPE_14__* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = call i32 @free(%struct.TYPE_14__* %64)
  br label %99

66:                                               ; preds = %56
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @r_list_iter_get(i32* %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %7, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = call i32 @free_pdb_stream(%struct.TYPE_14__* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = call i32 @free(%struct.TYPE_14__* %72)
  br label %99

74:                                               ; preds = %56
  %75 = load i32*, i32** %4, align 8
  %76 = call i64 @r_list_iter_get(i32* %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %8, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = call i32 @free_pdb_stream(%struct.TYPE_14__* %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = call i32 @free(%struct.TYPE_14__* %80)
  br label %99

82:                                               ; preds = %56
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @find_indx_in_list(i64 %85, i32 %86, %struct.TYPE_14__** %9)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = icmp ne %struct.TYPE_14__* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %99

91:                                               ; preds = %82
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @r_list_iter_get(i32* %92)
  %94 = inttoptr i64 %93 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %10, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = call i32 @free_pdb_stream(%struct.TYPE_14__* %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = call i32 @free(%struct.TYPE_14__* %97)
  br label %99

99:                                               ; preds = %91, %90, %74, %66, %58
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %52

102:                                              ; preds = %52
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @r_list_free(i64 %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = call i32* @r_list_iterator(i64 %109)
  store i32* %110, i32** %4, align 8
  br label %111

111:                                              ; preds = %135, %102
  %112 = load i32*, i32** %4, align 8
  %113 = call i64 @r_list_iter_next(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %111
  %116 = load i32*, i32** %4, align 8
  %117 = call i64 @r_list_iter_get(i32* %116)
  %118 = inttoptr i64 %117 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %9, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %120, align 8
  %122 = icmp ne i32 (%struct.TYPE_14__*)* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %115
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %125, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = call i32 %126(%struct.TYPE_14__* %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = call i32 @free(%struct.TYPE_14__* %133)
  br label %135

135:                                              ; preds = %123, %115
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %137 = call i32 @free(%struct.TYPE_14__* %136)
  br label %111

138:                                              ; preds = %111
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @r_list_free(i64 %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = call i32 @free(%struct.TYPE_14__* %145)
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @r_buf_free(i32 %149)
  br label %151

151:                                              ; preds = %138, %17
  ret void
}

declare dso_local i32* @r_list_iterator(i64) #1

declare dso_local i64 @r_list_iter_next(i32*) #1

declare dso_local i64 @r_list_iter_get(i32*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @r_list_free(i64) #1

declare dso_local i32 @free_pdb_stream(%struct.TYPE_14__*) #1

declare dso_local i32 @find_indx_in_list(i64, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @r_buf_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
