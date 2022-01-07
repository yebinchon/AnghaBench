; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_update_opts.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_update_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, i32, i8*, i32, i32, i32*, i64, i32, i32, i64, i64, i32, %struct.TYPE_2__*, %struct.demux_opts* }
%struct.TYPE_2__ = type { i32 }
%struct.demux_opts = type { i32, i32, i32, i8*, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to create file cache.\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Stopping recording.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*)* @update_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_opts(%struct.demux_internal* %0) #0 {
  %2 = alloca %struct.demux_internal*, align 8
  %3 = alloca %struct.demux_opts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %2, align 8
  %9 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %10 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %9, i32 0, i32 14
  %11 = load %struct.demux_opts*, %struct.demux_opts** %10, align 8
  store %struct.demux_opts* %11, %struct.demux_opts** %3, align 8
  %12 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %13 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %16 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %15, i32 0, i32 11
  store i64 %14, i64* %16, align 8
  %17 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %18 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %21 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %23 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %26 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %25, i32 0, i32 10
  store i64 %24, i64* %26, align 8
  %27 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %28 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  %30 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %31 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %30, i32 0, i32 13
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %37 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %42 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %40, %1
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %51 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %50, i32 0, i32 11
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %54 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @MPMAX(i64 %52, i32 %55)
  %57 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %58 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %57, i32 0, i32 11
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 1
  %66 = zext i1 %65 to i32
  %67 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %68 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %63
  %75 = phi i1 [ false, %63 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  %77 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %78 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %80 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %85 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %84, i32 0, i32 10
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %88 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %93 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %95 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %94, i32 0, i32 11
  store i64 0, i64* %95, align 8
  %96 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %97 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %99 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %98, i32 0, i32 10
  store i64 0, i64* %99, align 8
  %100 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %101 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %91, %86
  %103 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %104 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %102
  %108 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %109 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %114 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %112
  %118 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %119 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %122 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @demux_cache_create(i32 %120, i32 %123)
  %125 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %126 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %125, i32 0, i32 7
  store i64 %124, i64* %126, align 8
  %127 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %128 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %127, i32 0, i32 7
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %117
  %132 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %133 = call i32 @MP_ERR(%struct.demux_internal* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %117
  br label %135

135:                                              ; preds = %134, %112, %107, %102
  %136 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %137 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %142 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  br label %145

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %140
  %146 = phi i8* [ %143, %140 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %144 ]
  store i8* %146, i8** %7, align 8
  %147 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %148 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %153 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %152, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  br label %156

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %151
  %157 = phi i8* [ %154, %151 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %155 ]
  store i8* %157, i8** %8, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = call i64 @strcmp(i8* %158, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %193

162:                                              ; preds = %156
  %163 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %164 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %163, i32 0, i32 6
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %169 = call i32 @MP_WARN(%struct.demux_internal* %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %170 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %171 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @mp_recorder_destroy(i32* %172)
  %174 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %175 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %174, i32 0, i32 6
  store i32* null, i32** %175, align 8
  br label %176

176:                                              ; preds = %167, %162
  %177 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %178 = load %struct.demux_opts*, %struct.demux_opts** %3, align 8
  %179 = getelementptr inbounds %struct.demux_opts, %struct.demux_opts* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @talloc_strdup(%struct.demux_internal* %177, i8* %180)
  %182 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %183 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  %184 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %185 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %184, i32 0, i32 3
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @talloc_free(i8* %186)
  %188 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %189 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %192 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %176, %156
  %194 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %195 = call i32 @prune_old_packets(%struct.demux_internal* %194)
  %196 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %197 = call i32 @free_empty_cached_ranges(%struct.demux_internal* %196)
  ret void
}

declare dso_local i64 @MPMAX(i64, i32) #1

declare dso_local i64 @demux_cache_create(i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.demux_internal*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MP_WARN(%struct.demux_internal*, i8*) #1

declare dso_local i32 @mp_recorder_destroy(i32*) #1

declare dso_local i8* @talloc_strdup(%struct.demux_internal*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @prune_old_packets(%struct.demux_internal*) #1

declare dso_local i32 @free_empty_cached_ranges(%struct.demux_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
