; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_jffs2.c_mtd_parse_jffs2data.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_jffs2.c_mtd_parse_jffs2data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_unknown_node = type { i32, i64, i32 }
%struct.jffs2_raw_dirent = type { i32, i64, i64, i32, i64 }

@erasesize = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_DIRENT = common dso_local global i64 0, align 8
@target_ino = common dso_local global i64 0, align 8
@last_ino = common dso_local global i64 0, align 8
@last_version = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtd_parse_jffs2data(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.jffs2_unknown_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jffs2_raw_dirent*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.jffs2_unknown_node*
  store %struct.jffs2_unknown_node* %9, %struct.jffs2_unknown_node** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %87, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @erasesize, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %88

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = bitcast i8* %18 to %struct.jffs2_unknown_node*
  store %struct.jffs2_unknown_node* %19, %struct.jffs2_unknown_node** %5, align 8
  %20 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %5, align 8
  %21 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 6533
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %88

25:                                               ; preds = %14
  %26 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %5, align 8
  %27 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @PAD(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %5, align 8
  %35 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @JFFS2_NODETYPE_DIRENT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %25
  %40 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %5, align 8
  %41 = bitcast %struct.jffs2_unknown_node* %40 to %struct.jffs2_raw_dirent*
  store %struct.jffs2_raw_dirent* %41, %struct.jffs2_raw_dirent** %7, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  %47 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %48 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %53 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %58 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strncmp(i8* %55, i8* %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %64 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* @target_ino, align 8
  br label %66

66:                                               ; preds = %62, %51, %46, %39
  %67 = load i64, i64* @last_ino, align 8
  %68 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %69 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %74 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* @last_ino, align 8
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i64, i64* @last_version, align 8
  %78 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %79 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %7, align 8
  %84 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* @last_version, align 8
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %25
  br label %10

88:                                               ; preds = %24, %10
  ret void
}

declare dso_local i64 @PAD(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
