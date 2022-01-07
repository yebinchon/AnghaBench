; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_tags.c_mp_tags_copy_from_av_dictionary.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_tags.c_mp_tags_copy_from_av_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_tags = type { i32 }
%struct.AVDictionary = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_tags_copy_from_av_dictionary(%struct.mp_tags* %0, %struct.AVDictionary* %1) #0 {
  %3 = alloca %struct.mp_tags*, align 8
  %4 = alloca %struct.AVDictionary*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.mp_tags* %0, %struct.mp_tags** %3, align 8
  store %struct.AVDictionary* %1, %struct.AVDictionary** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %6

6:                                                ; preds = %12, %2
  %7 = load %struct.AVDictionary*, %struct.AVDictionary** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %10 = call %struct.TYPE_4__* @av_dict_get(%struct.AVDictionary* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %8, i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mp_tags_set_str(%struct.mp_tags* %13, i32 %16, i32 %19)
  br label %6

21:                                               ; preds = %6
  ret void
}

declare dso_local %struct.TYPE_4__* @av_dict_get(%struct.AVDictionary*, i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mp_tags_set_str(%struct.mp_tags*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
