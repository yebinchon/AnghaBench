; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_microsoft_demangle.c_microsoft_demangle.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_microsoft_demangle.c_microsoft_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@eDemanglerErrOK = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@abbr_types = common dso_local global i32 0, align 4
@abbr_names = common dso_local global i32 0, align 4
@eDemanglerErrMemoryAllocation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c".?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @microsoft_demangle(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* @eDemanglerErrOK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @free, align 4
  %8 = call i32 @r_list_newf(i32 %7)
  store i32 %8, i32* @abbr_types, align 4
  %9 = load i32, i32* @free, align 4
  %10 = call i32 @r_list_newf(i32 %9)
  store i32 %10, i32* @abbr_names, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8**, i8*** %4, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @eDemanglerErrMemoryAllocation, align 4
  store i32 %17, i32* %5, align 4
  br label %39

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @strncmp(i64 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 2
  %29 = load i8**, i8*** %4, align 8
  %30 = call i32 @parse_microsoft_rtti_mangled_name(i64 %28, i8** %29)
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %18
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i8**, i8*** %4, align 8
  %37 = call i32 @parse_microsoft_mangled_name(i64 %35, i8** %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* @abbr_names, align 4
  %41 = call i32 @r_list_free(i32 %40)
  %42 = load i32, i32* @abbr_types, align 4
  %43 = call i32 @r_list_free(i32 %42)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @r_list_newf(i32) #1

declare dso_local i32 @strncmp(i64, i8*, i32) #1

declare dso_local i32 @parse_microsoft_rtti_mangled_name(i64, i8**) #1

declare dso_local i32 @parse_microsoft_mangled_name(i64, i8**) #1

declare dso_local i32 @r_list_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
