; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_get_playlist_entry.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_get_playlist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_playlist_ctx = type { i32, %struct.playlist_entry*, %struct.MPContext* }
%struct.playlist_entry = type { i32, i32, %struct.playlist_entry* }
%struct.MPContext = type { %struct.playlist_entry*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.playlist_entry* }
%struct.m_sub_property = type { i8*, i32, i32 }

@M_PROPERTY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"playing\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*)* @get_playlist_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_playlist_entry(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.get_playlist_ctx*, align 8
  %11 = alloca %struct.MPContext*, align 8
  %12 = alloca %struct.playlist_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [5 x %struct.m_sub_property], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.get_playlist_ctx*
  store %struct.get_playlist_ctx* %17, %struct.get_playlist_ctx** %10, align 8
  %18 = load %struct.get_playlist_ctx*, %struct.get_playlist_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %18, i32 0, i32 2
  %20 = load %struct.MPContext*, %struct.MPContext** %19, align 8
  store %struct.MPContext* %20, %struct.MPContext** %11, align 8
  %21 = load %struct.get_playlist_ctx*, %struct.get_playlist_ctx** %10, align 8
  %22 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %21, i32 0, i32 1
  %23 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %24 = icmp ne %struct.playlist_entry* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.get_playlist_ctx*, %struct.get_playlist_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.get_playlist_ctx*, %struct.get_playlist_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %32, i32 0, i32 1
  %34 = load %struct.playlist_entry*, %struct.playlist_entry** %33, align 8
  store %struct.playlist_entry* %34, %struct.playlist_entry** %12, align 8
  br label %60

35:                                               ; preds = %25, %4
  %36 = load %struct.get_playlist_ctx*, %struct.get_playlist_ctx** %10, align 8
  %37 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %36, i32 0, i32 1
  %38 = load %struct.playlist_entry*, %struct.playlist_entry** %37, align 8
  %39 = icmp ne %struct.playlist_entry* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.get_playlist_ctx*, %struct.get_playlist_ctx** %10, align 8
  %43 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.get_playlist_ctx*, %struct.get_playlist_ctx** %10, align 8
  %49 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %48, i32 0, i32 1
  %50 = load %struct.playlist_entry*, %struct.playlist_entry** %49, align 8
  %51 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %50, i32 0, i32 2
  %52 = load %struct.playlist_entry*, %struct.playlist_entry** %51, align 8
  store %struct.playlist_entry* %52, %struct.playlist_entry** %12, align 8
  br label %59

53:                                               ; preds = %40, %35
  %54 = load %struct.MPContext*, %struct.MPContext** %11, align 8
  %55 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.playlist_entry* @playlist_entry_from_index(%struct.TYPE_2__* %56, i32 %57)
  store %struct.playlist_entry* %58, %struct.playlist_entry** %12, align 8
  br label %59

59:                                               ; preds = %53, %47
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.get_playlist_ctx*, %struct.get_playlist_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %65 = load %struct.get_playlist_ctx*, %struct.get_playlist_ctx** %10, align 8
  %66 = getelementptr inbounds %struct.get_playlist_ctx, %struct.get_playlist_ctx* %65, i32 0, i32 1
  store %struct.playlist_entry* %64, %struct.playlist_entry** %66, align 8
  %67 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %68 = icmp ne %struct.playlist_entry* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @M_PROPERTY_ERROR, align 4
  store i32 %70, i32* %5, align 4
  br label %128

71:                                               ; preds = %60
  %72 = load %struct.MPContext*, %struct.MPContext** %11, align 8
  %73 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.playlist_entry*, %struct.playlist_entry** %75, align 8
  %77 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %78 = icmp eq %struct.playlist_entry* %76, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %13, align 4
  %80 = load %struct.MPContext*, %struct.MPContext** %11, align 8
  %81 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %80, i32 0, i32 0
  %82 = load %struct.playlist_entry*, %struct.playlist_entry** %81, align 8
  %83 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %84 = icmp eq %struct.playlist_entry* %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %14, align 4
  %86 = getelementptr inbounds [5 x %struct.m_sub_property], [5 x %struct.m_sub_property]* %15, i64 0, i64 0
  %87 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %87, align 16
  %88 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %86, i32 0, i32 1
  %89 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %90 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SUB_PROP_STR(i32 %91)
  store i32 %92, i32* %88, align 8
  %93 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %86, i32 0, i32 2
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %86, i64 1
  %95 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %95, align 16
  %96 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %94, i32 0, i32 1
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %96, align 8
  %101 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %94, i32 0, i32 2
  store i32 0, i32* %101, align 4
  %102 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %94, i64 1
  %103 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %102, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %103, align 16
  %104 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %102, i32 0, i32 1
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %104, align 8
  %109 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %102, i32 0, i32 2
  store i32 0, i32* %109, align 4
  %110 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %102, i64 1
  %111 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %111, align 16
  %112 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %110, i32 0, i32 1
  %113 = load %struct.playlist_entry*, %struct.playlist_entry** %12, align 8
  %114 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %112, align 8
  %119 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %110, i32 0, i32 2
  store i32 0, i32* %119, align 4
  %120 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %110, i64 1
  %121 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %120, i32 0, i32 0
  store i8* null, i8** %121, align 16
  %122 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %120, i32 0, i32 1
  store i32 0, i32* %122, align 8
  %123 = getelementptr inbounds %struct.m_sub_property, %struct.m_sub_property* %120, i32 0, i32 2
  store i32 0, i32* %123, align 4
  %124 = getelementptr inbounds [5 x %struct.m_sub_property], [5 x %struct.m_sub_property]* %15, i64 0, i64 0
  %125 = load i32, i32* %7, align 4
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @m_property_read_sub(%struct.m_sub_property* %124, i32 %125, i8* %126)
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %71, %69
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.playlist_entry* @playlist_entry_from_index(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @SUB_PROP_STR(i32) #1

declare dso_local i32 @m_property_read_sub(%struct.m_sub_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
