; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_sections.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_te_section_t = type { i32, i32, i8*, i32, i32, i8*, i32 }
%struct.r_bin_te_obj_t = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"malloc (sections)\00", align 1
@TE_IMAGE_SIZEOF_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.r_bin_te_section_t* @r_bin_te_get_sections(%struct.r_bin_te_obj_t* %0) #0 {
  %2 = alloca %struct.r_bin_te_section_t*, align 8
  %3 = alloca %struct.r_bin_te_obj_t*, align 8
  %4 = alloca %struct.r_bin_te_section_t*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.r_bin_te_obj_t* %0, %struct.r_bin_te_obj_t** %3, align 8
  store %struct.r_bin_te_section_t* null, %struct.r_bin_te_section_t** %4, align 8
  %8 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %9 = icmp ne %struct.r_bin_te_obj_t* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.r_bin_te_section_t* null, %struct.r_bin_te_section_t** %2, align 8
  br label %128

11:                                               ; preds = %1
  %12 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %13 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %16 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = call %struct.r_bin_te_section_t* @calloc(i32 %21, i32 40)
  store %struct.r_bin_te_section_t* %22, %struct.r_bin_te_section_t** %4, align 8
  %23 = icmp ne %struct.r_bin_te_section_t* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %11
  %25 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.r_bin_te_section_t* null, %struct.r_bin_te_section_t** %2, align 8
  br label %128

26:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %118, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %121

31:                                               ; preds = %27
  %32 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %32, i64 %34
  %36 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TE_IMAGE_SIZEOF_NAME, align 4
  %45 = call i32 @memcpy(i32 %37, i32 %43, i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %53 = call i8* @r_bin_te_get_stripped_delta(%struct.r_bin_te_obj_t* %52)
  %54 = ptrtoint i8* %51 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %58, i64 %60
  %62 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %61, i32 0, i32 5
  store i8* %57, i8** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %69, i64 %71
  %73 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %72, i32 0, i32 4
  store i32 %68, i32* %73, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %80, i64 %82
  %84 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %83, i32 0, i32 3
  store i32 %79, i32* %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %92 = call i8* @r_bin_te_get_stripped_delta(%struct.r_bin_te_obj_t* %91)
  %93 = ptrtoint i8* %90 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %97, i64 %99
  %101 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %100, i32 0, i32 2
  store i8* %96, i8** %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %108, i64 %110
  %112 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %111, i32 0, i32 1
  store i32 %107, i32* %112, align 4
  %113 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %113, i64 %115
  %117 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %31
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %27

121:                                              ; preds = %27
  %122 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %122, i64 %124
  %126 = getelementptr inbounds %struct.r_bin_te_section_t, %struct.r_bin_te_section_t* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %4, align 8
  store %struct.r_bin_te_section_t* %127, %struct.r_bin_te_section_t** %2, align 8
  br label %128

128:                                              ; preds = %121, %24, %10
  %129 = load %struct.r_bin_te_section_t*, %struct.r_bin_te_section_t** %2, align 8
  ret %struct.r_bin_te_section_t* %129
}

declare dso_local %struct.r_bin_te_section_t* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @r_bin_te_get_stripped_delta(%struct.r_bin_te_obj_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
