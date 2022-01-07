; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_clone.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__*, i32, i32, i32, %struct.TYPE_20__, i32, i8*, i32, i8*, i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_23__*, %struct.TYPE_23__*)* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@SPL_FILE_DIR_SKIPDOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_22__*)* @spl_filesystem_object_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @spl_filesystem_object_clone(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %9 = call %struct.TYPE_23__* @spl_filesystem_from_obj(%struct.TYPE_22__* %8)
  store %struct.TYPE_23__* %9, %struct.TYPE_23__** %5, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_22__* @spl_filesystem_object_new_ex(i32 %12)
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %3, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = call %struct.TYPE_23__* @spl_filesystem_from_obj(%struct.TYPE_22__* %14)
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %4, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %102 [
    i32 128, label %24
    i32 130, label %53
    i32 129, label %100
  ]

24:                                               ; preds = %1
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 7
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @estrndup(i8* %32, i32 %35)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 9
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @estrndup(i8* %46, i32 %49)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  br label %102

53:                                               ; preds = %1
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 7
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @spl_filesystem_dir_open(%struct.TYPE_23__* %54, i8* %57)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SPL_FILE_DIR_SKIPDOTS, align 4
  %63 = call i32 @SPL_HAS_FLAG(i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %91, %53
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %65, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %88, %72
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = call i32 @spl_filesystem_dir_read(%struct.TYPE_23__* %74)
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @spl_filesystem_is_dot(i32 %85)
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %79, %76
  %89 = phi i1 [ false, %76 ], [ %87, %79 ]
  br i1 %89, label %73, label %90

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %64

94:                                               ; preds = %64
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  br label %102

100:                                              ; preds = %1
  %101 = call i32 @ZEND_ASSERT(i32 0)
  br label %102

102:                                              ; preds = %100, %1, %94, %24
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  store %struct.TYPE_21__* %120, %struct.TYPE_21__** %122, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %125 = call i32 @zend_objects_clone_members(%struct.TYPE_22__* %123, %struct.TYPE_22__* %124)
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = icmp ne %struct.TYPE_21__* %128, null
  br i1 %129, label %130, label %146

130:                                              ; preds = %102
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_23__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_23__*)** %134, align 8
  %136 = icmp ne i32 (%struct.TYPE_23__*, %struct.TYPE_23__*)* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32 (%struct.TYPE_23__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_23__*)** %141, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %145 = call i32 %142(%struct.TYPE_23__* %143, %struct.TYPE_23__* %144)
  br label %146

146:                                              ; preds = %137, %130, %102
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %147
}

declare dso_local %struct.TYPE_23__* @spl_filesystem_from_obj(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @spl_filesystem_object_new_ex(i32) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i32 @spl_filesystem_dir_open(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @SPL_HAS_FLAG(i32, i32) #1

declare dso_local i32 @spl_filesystem_dir_read(%struct.TYPE_23__*) #1

declare dso_local i32 @spl_filesystem_is_dot(i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @zend_objects_clone_members(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
