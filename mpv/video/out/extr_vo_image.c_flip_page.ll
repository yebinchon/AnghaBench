; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_image.c_flip_page.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_image.c_flip_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.priv* }
%struct.priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"%08d.%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Saving %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @flip_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flip_page(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %6 = load %struct.vo*, %struct.vo** %2, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 2
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %79

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = call i8* @talloc_new(i32* null)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @image_writer_file_ext(i32 %28)
  %30 = call i8* @talloc_asprintf(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29)
  store i8* %30, i8** %5, align 8
  %31 = load %struct.priv*, %struct.priv** %3, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %14
  %38 = load %struct.priv*, %struct.priv** %3, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @strlen(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i8* @mp_path_join(i8* %46, i64 %51, i8* %52)
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %45, %37, %14
  %55 = load %struct.vo*, %struct.vo** %2, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @MP_INFO(%struct.vo* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load %struct.priv*, %struct.priv** %3, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.priv*, %struct.priv** %3, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.vo*, %struct.vo** %2, align 8
  %68 = getelementptr inbounds %struct.vo, %struct.vo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vo*, %struct.vo** %2, align 8
  %71 = getelementptr inbounds %struct.vo, %struct.vo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @write_image(i32 %60, i32 %65, i8* %66, i32 %69, i32 %72)
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @talloc_free(i8* %74)
  %76 = load %struct.priv*, %struct.priv** %3, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 0
  %78 = call i32 @mp_image_unrefp(i32* %77)
  br label %79

79:                                               ; preds = %54, %13
  ret void
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8* @talloc_asprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @image_writer_file_ext(i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i8* @mp_path_join(i8*, i64, i8*) #1

declare dso_local i32 @MP_INFO(%struct.vo*, i8*, i8*) #1

declare dso_local i32 @write_image(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @mp_image_unrefp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
