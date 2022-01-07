; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_uuid.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.grub_nilfs2_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@my_mod = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%0x-%02x%02x%02x%02x%02x%02x\00", align 1
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**)* @grub_nilfs2_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_nilfs2_uuid(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.grub_nilfs2_data*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @my_mod, align 4
  %11 = call i32 @grub_dl_ref(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.grub_nilfs2_data* @grub_nilfs2_mount(i32 %12)
  store %struct.grub_nilfs2_data* %13, %struct.grub_nilfs2_data** %5, align 8
  %14 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %15 = icmp ne %struct.grub_nilfs2_data* %14, null
  br i1 %15, label %16, label %115

16:                                               ; preds = %2
  %17 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %18 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %24 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %30 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %36 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %42 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %48 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %54 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %60 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %66 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %72 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 9
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %78 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 10
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %84 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 11
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %90 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 12
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %96 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 13
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %102 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 14
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %108 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 15
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @grub_xasprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %28, i32 %34, i32 %40, i32 %46, i32 %52, i32 %58, i32 %64, i32 %70, i32 %76, i32 %82, i32 %88, i32 %94, i32 %100, i32 %106, i32 %112)
  %114 = load i8**, i8*** %4, align 8
  store i8* %113, i8** %114, align 8
  br label %117

115:                                              ; preds = %2
  %116 = load i8**, i8*** %4, align 8
  store i8* null, i8** %116, align 8
  br label %117

117:                                              ; preds = %115, %16
  %118 = load i32, i32* @my_mod, align 4
  %119 = call i32 @grub_dl_unref(i32 %118)
  %120 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %121 = call i32 @grub_free(%struct.grub_nilfs2_data* %120)
  %122 = load i32, i32* @grub_errno, align 4
  ret i32 %122
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_nilfs2_data* @grub_nilfs2_mount(i32) #1

declare dso_local i8* @grub_xasprintf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_nilfs2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
