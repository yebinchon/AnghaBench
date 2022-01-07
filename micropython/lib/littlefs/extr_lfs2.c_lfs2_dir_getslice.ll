; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_getslice.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_getslice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32* }

@LFS2_TYPE_SPLICE = common dso_local global i64 0, align 8
@LFS2_TYPE_CREATE = common dso_local global i32 0, align 4
@LFS2_ERR_NOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i64, i8*, i32)* @lfs2_dir_getslice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_dir_getslice(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %16, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @lfs2_gstate_hasmovehere(%struct.TYPE_9__* %29, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %7
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @lfs2_tag_id(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @lfs2_tag_id(i32 %41)
  %43 = icmp sle i64 %37, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = call i32 @LFS2_MKTAG(i32 0, i32 1, i32 0)
  %46 = load i32, i32* %18, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %18, align 4
  br label %48

48:                                               ; preds = %44, %35, %7
  br label %49

49:                                               ; preds = %171, %48
  %50 = load i64, i64* %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i64 @lfs2_tag_dsize(i32 %51)
  %53 = add i64 4, %52
  %54 = icmp uge i64 %50, %53
  br i1 %54, label %55, label %172

55:                                               ; preds = %49
  %56 = load i32, i32* %17, align 4
  %57 = call i64 @lfs2_tag_dsize(i32 %56)
  %58 = load i64, i64* %16, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %16, align 8
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %19, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %16, align 8
  %70 = bitcast i32* %17 to i8*
  %71 = call i32 @lfs2_bd_read(%struct.TYPE_7__* %61, i32* null, i32* %63, i32 4, i32 %68, i64 %69, i8* %70, i32 4)
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %55
  %75 = load i32, i32* %20, align 4
  store i32 %75, i32* %8, align 4
  br label %174

76:                                               ; preds = %55
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @lfs2_frombe32(i32 %77)
  %79 = load i32, i32* %19, align 4
  %80 = xor i32 %78, %79
  %81 = and i32 %80, 2147483647
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @lfs2_tag_id(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %76
  %86 = load i32, i32* %19, align 4
  %87 = call i64 @lfs2_tag_type1(i32 %86)
  %88 = load i64, i64* @LFS2_TYPE_SPLICE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %85
  %91 = load i32, i32* %19, align 4
  %92 = call i64 @lfs2_tag_id(i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %18, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i64 @lfs2_tag_id(i32 %95)
  %97 = icmp sle i64 %92, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %90
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @LFS2_TYPE_CREATE, align 4
  %101 = call i32 @LFS2_MKTAG(i32 %100, i32 0, i32 0)
  %102 = call i32 @LFS2_MKTAG(i32 0, i32 1023, i32 0)
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 %103, %104
  %106 = and i32 %102, %105
  %107 = or i32 %101, %106
  %108 = icmp eq i32 %99, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @LFS2_ERR_NOENT, align 4
  store i32 %110, i32* %8, align 4
  br label %174

111:                                              ; preds = %98
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @lfs2_tag_splice(i32 %112)
  %114 = call i32 @LFS2_MKTAG(i32 0, i32 %113, i32 0)
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %18, align 4
  br label %117

117:                                              ; preds = %111, %90, %85, %76
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %19, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %18, align 4
  %124 = sub nsw i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp eq i32 %120, %125
  br i1 %126, label %127, label %171

127:                                              ; preds = %117
  %128 = load i32, i32* %19, align 4
  %129 = call i64 @lfs2_tag_isdelete(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @LFS2_ERR_NOENT, align 4
  store i32 %132, i32* %8, align 4
  br label %174

133:                                              ; preds = %127
  %134 = load i32, i32* %19, align 4
  %135 = call i32 @lfs2_tag_size(i32 %134)
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @lfs2_min(i32 %135, i32 %136)
  store i32 %137, i32* %21, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %21, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %16, align 8
  %148 = add i64 %147, 4
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %148, %149
  %151 = load i8*, i8** %14, align 8
  %152 = load i32, i32* %21, align 4
  %153 = call i32 @lfs2_bd_read(%struct.TYPE_7__* %138, i32* null, i32* %140, i32 %141, i32 %146, i64 %150, i8* %151, i32 %152)
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %133
  %157 = load i32, i32* %20, align 4
  store i32 %157, i32* %8, align 4
  br label %174

158:                                              ; preds = %133
  %159 = load i8*, i8** %14, align 8
  %160 = bitcast i8* %159 to i32*
  %161 = load i32, i32* %21, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %21, align 4
  %166 = sub nsw i32 %164, %165
  %167 = call i32 @memset(i32* %163, i32 0, i32 %166)
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* %8, align 4
  br label %174

171:                                              ; preds = %117
  br label %49

172:                                              ; preds = %49
  %173 = load i32, i32* @LFS2_ERR_NOENT, align 4
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %172, %158, %156, %131, %109, %74
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local i64 @lfs2_gstate_hasmovehere(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @lfs2_tag_id(i32) #1

declare dso_local i32 @LFS2_MKTAG(i32, i32, i32) #1

declare dso_local i64 @lfs2_tag_dsize(i32) #1

declare dso_local i32 @lfs2_bd_read(%struct.TYPE_7__*, i32*, i32*, i32, i32, i64, i8*, i32) #1

declare dso_local i32 @lfs2_frombe32(i32) #1

declare dso_local i64 @lfs2_tag_type1(i32) #1

declare dso_local i32 @lfs2_tag_splice(i32) #1

declare dso_local i64 @lfs2_tag_isdelete(i32) #1

declare dso_local i32 @lfs2_min(i32, i32) #1

declare dso_local i32 @lfs2_tag_size(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
