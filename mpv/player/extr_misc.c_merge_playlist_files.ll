; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_misc.c_merge_playlist_files.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_misc.c_merge_playlist_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { %struct.playlist_entry* }
%struct.playlist_entry = type { i8*, %struct.playlist_entry* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"edl://\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"=%,;\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%%%zd%%\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_playlist_files(%struct.playlist* %0) #0 {
  %2 = alloca %struct.playlist*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.playlist_entry*, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  store %struct.playlist* %0, %struct.playlist** %2, align 8
  %6 = load %struct.playlist*, %struct.playlist** %2, align 8
  %7 = getelementptr inbounds %struct.playlist, %struct.playlist* %6, i32 0, i32 0
  %8 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %9 = icmp ne %struct.playlist_entry* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %79

11:                                               ; preds = %1
  %12 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  %13 = load %struct.playlist*, %struct.playlist** %2, align 8
  %14 = getelementptr inbounds %struct.playlist, %struct.playlist* %13, i32 0, i32 0
  %15 = load %struct.playlist_entry*, %struct.playlist_entry** %14, align 8
  store %struct.playlist_entry* %15, %struct.playlist_entry** %4, align 8
  br label %16

16:                                               ; preds = %67, %11
  %17 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %18 = icmp ne %struct.playlist_entry* %17, null
  br i1 %18, label %19, label %71

19:                                               ; preds = %16
  %20 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %21 = load %struct.playlist*, %struct.playlist** %2, align 8
  %22 = getelementptr inbounds %struct.playlist, %struct.playlist* %21, i32 0, i32 0
  %23 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %24 = icmp ne %struct.playlist_entry* %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @talloc_strdup_append_buffer(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %30 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %33 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcspn(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %28
  %41 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %42 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @bstr0(i8* %43)
  %45 = call i64 @bstr_strip(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %50 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %40, %28
  %55 = load i8*, i8** %3, align 8
  %56 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %57 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = call i8* @talloc_asprintf_append_buffer(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  store i8* %60, i8** %3, align 8
  br label %61

61:                                               ; preds = %54, %40
  %62 = load i8*, i8** %3, align 8
  %63 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %64 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @talloc_strdup_append_buffer(i8* %62, i8* %65)
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %61
  %68 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %69 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %68, i32 0, i32 1
  %70 = load %struct.playlist_entry*, %struct.playlist_entry** %69, align 8
  store %struct.playlist_entry* %70, %struct.playlist_entry** %4, align 8
  br label %16

71:                                               ; preds = %16
  %72 = load %struct.playlist*, %struct.playlist** %2, align 8
  %73 = call i32 @playlist_clear(%struct.playlist* %72)
  %74 = load %struct.playlist*, %struct.playlist** %2, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @playlist_add_file(%struct.playlist* %74, i8* %75)
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @talloc_free(i8* %77)
  br label %79

79:                                               ; preds = %71, %10
  ret void
}

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i8* @talloc_strdup_append_buffer(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @bstr_strip(i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @talloc_asprintf_append_buffer(i8*, i8*, i64) #1

declare dso_local i32 @playlist_clear(%struct.playlist*) #1

declare dso_local i32 @playlist_add_file(%struct.playlist*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
