; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_anal_objc.c_objc_build_refs.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_anal_objc.c_objc_build_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @objc_build_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objc_build_refs(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %157

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32* @calloc(i32 1, i64 %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %157

30:                                               ; preds = %20
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @r_io_read_at(i32 %35, i64 %40, i32* %41, i64 %46)
  store i64 0, i64* %4, align 8
  br label %48

48:                                               ; preds = %80, %30
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %49, 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %50, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %48
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* %6, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = call i64 @r_read_le64(i32* %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %57
  br label %80

72:                                               ; preds = %57
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @addr_key(i64 %76)
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @sdb_array_add_num(i32 %75, i32 %77, i64 %78, i32 0)
  br label %80

80:                                               ; preds = %72, %71
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %4, align 8
  br label %48

86:                                               ; preds = %48
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @free(i32* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32* @calloc(i32 1, i64 %93)
  store i32* %94, i32** %5, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %157

98:                                               ; preds = %86
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @r_io_read_at(i32 %103, i64 %108, i32* %109, i64 %114)
  store i64 0, i64* %4, align 8
  br label %116

116:                                              ; preds = %148, %98
  %117 = load i64, i64* %4, align 8
  %118 = add nsw i64 %117, 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %118, %123
  br i1 %124, label %125, label %154

125:                                              ; preds = %116
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = add nsw i64 %130, %131
  store i64 %132, i64* %8, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = load i64, i64* %4, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = call i64 @r_read_le64(i32* %135)
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %9, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %125
  br label %148

140:                                              ; preds = %125
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @addr_key(i64 %144)
  %146 = load i64, i64* %8, align 8
  %147 = call i32 @sdb_array_add_num(i32 %143, i32 %145, i64 %146, i32 0)
  br label %148

148:                                              ; preds = %140, %139
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %4, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %4, align 8
  br label %116

154:                                              ; preds = %116
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @free(i32* %155)
  store i32 1, i32* %2, align 4
  br label %157

157:                                              ; preds = %154, %97, %29, %19
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i32 @r_io_read_at(i32, i64, i32*, i64) #1

declare dso_local i64 @r_read_le64(i32*) #1

declare dso_local i32 @sdb_array_add_num(i32, i32, i64, i32) #1

declare dso_local i32 @addr_key(i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
