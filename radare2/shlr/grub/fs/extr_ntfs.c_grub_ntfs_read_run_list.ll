; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_read_run_list.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_read_run_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ntfs_rlst = type { i8*, i64, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { void (i64, i32, i32, i8*)* }
%struct.TYPE_6__ = type { i32, i64* }

@AF_ALST = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"$DATA should be non-resident\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"run list overflown\00", align 1
@RF_BLNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grub_ntfs_read_run_list(%struct.grub_ntfs_rlst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grub_ntfs_rlst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i64, i32, i32, i8*)*, align 8
  store %struct.grub_ntfs_rlst* %0, %struct.grub_ntfs_rlst** %3, align 8
  %9 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %10 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %77, %1
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 15
  store i32 %16, i32* %4, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = ashr i32 %19, 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %89, label %23

23:                                               ; preds = %12
  %24 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %25 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %24, i32 0, i32 6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %86

28:                                               ; preds = %23
  %29 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %30 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %29, i32 0, i32 6
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AF_ALST, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %28
  %38 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %39 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load void (i64, i32, i32, i8*)*, void (i64, i32, i32, i8*)** %42, align 8
  store void (i64, i32, i32, i8*)* %43, void (i64, i32, i32, i8*)** %8, align 8
  %44 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %45 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store void (i64, i32, i32, i8*)* null, void (i64, i32, i32, i8*)** %48, align 8
  %49 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %50 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %49, i32 0, i32 6
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %53 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %52, i32 0, i32 6
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i8
  %59 = call i8* @find_attr(%struct.TYPE_6__* %51, i8 zeroext %58)
  store i8* %59, i8** %7, align 8
  %60 = load void (i64, i32, i32, i8*)*, void (i64, i32, i32, i8*)** %8, align 8
  %61 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %62 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store void (i64, i32, i32, i8*)* %60, void (i64, i32, i32, i8*)** %65, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %37
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %76 = call i32 @grub_error(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %76, i32* %2, align 4
  br label %133

77:                                               ; preds = %68
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @u16at(i8* %78, i32 32)
  %80 = load i8*, i8** %7, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %7, align 8
  %83 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %84 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %12

85:                                               ; preds = %37
  br label %86

86:                                               ; preds = %85, %28, %23
  %87 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %88 = call i32 @grub_error(i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %88, i32* %2, align 4
  br label %133

89:                                               ; preds = %12
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i32, i32* %4, align 4
  %93 = call i8* @read_run_data(i8* %91, i32 %92, i64* %6, i32 0)
  store i8* %93, i8** %7, align 8
  %94 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %95 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %98 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %101 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i8* @read_run_data(i8* %106, i32 %107, i64* %6, i32 1)
  store i8* %108, i8** %7, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %111 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %89
  %117 = load i32, i32* @RF_BLNK, align 4
  %118 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %119 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %129

122:                                              ; preds = %89
  %123 = load i32, i32* @RF_BLNK, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %126 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %122, %116
  %130 = load i8*, i8** %7, align 8
  %131 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %3, align 8
  %132 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %86, %74
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i8* @find_attr(%struct.TYPE_6__*, i8 zeroext) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @u16at(i8*, i32) #1

declare dso_local i8* @read_run_data(i8*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
