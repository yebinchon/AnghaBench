; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/omf/extr_omf.c_cpy_omf_names.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/omf/extr_omf.c_cpy_omf_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32**, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64 }

@OMF_LNAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @cpy_omf_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpy_omf_names(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %68, %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = load i32, i32* @OMF_LNAMES, align 4
  %14 = call %struct.TYPE_9__* @get_next_omf_record_type(%struct.TYPE_9__* %12, i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %72

16:                                               ; preds = %11
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = bitcast %struct.TYPE_9__* %17 to %struct.TYPE_10__*
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %5, align 8
  store i32 -1, i32* %7, align 4
  br label %22

22:                                               ; preds = %67, %16
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %22
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8**
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %29
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32*, i32** %42, i64 %45
  store i32* null, i32** %46, align 8
  br label %67

47:                                               ; preds = %29
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8**
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32* @strdup(i8* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32*, i32** %59, i64 %62
  store i32* %56, i32** %63, align 8
  %64 = icmp ne i32* %56, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %73

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %39
  br label %22

68:                                               ; preds = %22
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %4, align 8
  br label %11

72:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %65
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_9__* @get_next_omf_record_type(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
