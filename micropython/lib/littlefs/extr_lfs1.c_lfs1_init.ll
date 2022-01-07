; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_init.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i32, i32*, i32*, %struct.lfs1_config*, %struct.TYPE_9__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.lfs1_config = type { i32, i32, i32, i32, i8*, i8*, i8* }

@LFS1_ERR_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.lfs1_config*)* @lfs1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs1_init(%struct.TYPE_10__* %0, %struct.lfs1_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.lfs1_config*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.lfs1_config* %1, %struct.lfs1_config** %5, align 8
  %6 = load %struct.lfs1_config*, %struct.lfs1_config** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  store %struct.lfs1_config* %6, %struct.lfs1_config** %8, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 5
  %11 = load %struct.lfs1_config*, %struct.lfs1_config** %10, align 8
  %12 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %11, i32 0, i32 6
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 5
  %18 = load %struct.lfs1_config*, %struct.lfs1_config** %17, align 8
  %19 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %18, i32 0, i32 6
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  %27 = load %struct.lfs1_config*, %struct.lfs1_config** %26, align 8
  %28 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @lfs1_malloc(i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  br label %195

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %15
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 5
  %44 = load %struct.lfs1_config*, %struct.lfs1_config** %43, align 8
  %45 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %44, i32 0, i32 5
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 5
  %51 = load %struct.lfs1_config*, %struct.lfs1_config** %50, align 8
  %52 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %51, i32 0, i32 5
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  br label %74

57:                                               ; preds = %41
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  %60 = load %struct.lfs1_config*, %struct.lfs1_config** %59, align 8
  %61 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @lfs1_malloc(i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %57
  br label %195

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 8
  %78 = call i32 @lfs1_cache_zero(%struct.TYPE_10__* %75, %struct.TYPE_11__* %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 7
  %82 = call i32 @lfs1_cache_drop(%struct.TYPE_10__* %79, %struct.TYPE_12__* %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = load %struct.lfs1_config*, %struct.lfs1_config** %84, align 8
  %86 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = srem i32 %87, 32
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @LFS1_ASSERT(i32 %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 5
  %94 = load %struct.lfs1_config*, %struct.lfs1_config** %93, align 8
  %95 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @LFS1_ASSERT(i32 %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = load %struct.lfs1_config*, %struct.lfs1_config** %101, align 8
  %103 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %74
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load %struct.lfs1_config*, %struct.lfs1_config** %108, align 8
  %110 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  br label %133

115:                                              ; preds = %74
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  %118 = load %struct.lfs1_config*, %struct.lfs1_config** %117, align 8
  %119 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %120, 8
  %122 = call i8* @lfs1_malloc(i32 %121)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %115
  br label %195

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %106
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  %136 = load %struct.lfs1_config*, %struct.lfs1_config** %135, align 8
  %137 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  %141 = load %struct.lfs1_config*, %struct.lfs1_config** %140, align 8
  %142 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = srem i32 %138, %143
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @LFS1_ASSERT(i32 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 5
  %150 = load %struct.lfs1_config*, %struct.lfs1_config** %149, align 8
  %151 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 5
  %155 = load %struct.lfs1_config*, %struct.lfs1_config** %154, align 8
  %156 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = srem i32 %152, %157
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @LFS1_ASSERT(i32 %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 5
  %164 = load %struct.lfs1_config*, %struct.lfs1_config** %163, align 8
  %165 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 8
  %168 = udiv i32 -1, %167
  %169 = call i32 @lfs1_npw2(i32 %168)
  %170 = mul nsw i32 4, %169
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 5
  %173 = load %struct.lfs1_config*, %struct.lfs1_config** %172, align 8
  %174 = getelementptr inbounds %struct.lfs1_config, %struct.lfs1_config* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = icmp sle i32 %170, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @LFS1_ASSERT(i32 %177)
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 -1, i32* %182, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 -1, i32* %186, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 4
  store i32* null, i32** %188, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  store i32* null, i32** %190, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  store i32 0, i32* %192, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  store i32 0, i32* %194, align 4
  store i32 0, i32* %3, align 4
  br label %199

195:                                              ; preds = %131, %72, %39
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = call i32 @lfs1_deinit(%struct.TYPE_10__* %196)
  %198 = load i32, i32* @LFS1_ERR_NOMEM, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %195, %133
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i8* @lfs1_malloc(i32) #1

declare dso_local i32 @lfs1_cache_zero(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @lfs1_cache_drop(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @LFS1_ASSERT(i32) #1

declare dso_local i32 @lfs1_npw2(i32) #1

declare dso_local i32 @lfs1_deinit(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
