; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_read_blkio.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup_read_blkio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio = type { i64, i64, i32, i64, i64, i32 }

@CONFIG_BOOLEAN_AUTO = common dso_local global i64 0, align 8
@cgroup_read_blkio.ff = internal global i32* null, align 8
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@cgroups_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CGROUP: file '%s' should have 1+ lines.\00", align 1
@Read_hash = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@Write_hash = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@netdata_zero_metrics_enabled = common dso_local global i64 0, align 8
@CONFIG_BOOLEAN_YES = common dso_local global i64 0, align 8
@cgroup_recheck_zero_blkio_every_iterations = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkio*)* @cgroup_read_blkio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_read_blkio(%struct.blkio* %0) #0 {
  %2 = alloca %struct.blkio*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.blkio* %0, %struct.blkio** %2, align 8
  %7 = load %struct.blkio*, %struct.blkio** %2, align 8
  %8 = getelementptr inbounds %struct.blkio, %struct.blkio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.blkio*, %struct.blkio** %2, align 8
  %14 = getelementptr inbounds %struct.blkio, %struct.blkio* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ false, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.blkio*, %struct.blkio** %2, align 8
  %24 = getelementptr inbounds %struct.blkio, %struct.blkio* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  br label %181

27:                                               ; preds = %17
  %28 = load %struct.blkio*, %struct.blkio** %2, align 8
  %29 = getelementptr inbounds %struct.blkio, %struct.blkio* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %181

33:                                               ; preds = %27
  %34 = load i32*, i32** @cgroup_read_blkio.ff, align 8
  %35 = load %struct.blkio*, %struct.blkio** %2, align 8
  %36 = getelementptr inbounds %struct.blkio, %struct.blkio* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %39 = call i32* @procfile_reopen(i32* %34, i32 %37, i32* null, i32 %38)
  store i32* %39, i32** @cgroup_read_blkio.ff, align 8
  %40 = load i32*, i32** @cgroup_read_blkio.ff, align 8
  %41 = icmp ne i32* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.blkio*, %struct.blkio** %2, align 8
  %48 = getelementptr inbounds %struct.blkio, %struct.blkio* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %181

49:                                               ; preds = %33
  %50 = load i32*, i32** @cgroup_read_blkio.ff, align 8
  %51 = call i32* @procfile_readall(i32* %50)
  store i32* %51, i32** @cgroup_read_blkio.ff, align 8
  %52 = load i32*, i32** @cgroup_read_blkio.ff, align 8
  %53 = icmp ne i32* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.blkio*, %struct.blkio** %2, align 8
  %60 = getelementptr inbounds %struct.blkio, %struct.blkio* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %181

61:                                               ; preds = %49
  %62 = load i32*, i32** @cgroup_read_blkio.ff, align 8
  %63 = call i64 @procfile_lines(i32* %62)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ult i64 %64, 1
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.blkio*, %struct.blkio** %2, align 8
  %71 = getelementptr inbounds %struct.blkio, %struct.blkio* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.blkio*, %struct.blkio** %2, align 8
  %75 = getelementptr inbounds %struct.blkio, %struct.blkio* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  br label %181

76:                                               ; preds = %61
  %77 = load %struct.blkio*, %struct.blkio** %2, align 8
  %78 = getelementptr inbounds %struct.blkio, %struct.blkio* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.blkio*, %struct.blkio** %2, align 8
  %80 = getelementptr inbounds %struct.blkio, %struct.blkio* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  store i64 0, i64* %3, align 8
  br label %81

81:                                               ; preds = %138, %76
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %141

85:                                               ; preds = %81
  %86 = load i32*, i32** @cgroup_read_blkio.ff, align 8
  %87 = load i64, i64* %3, align 8
  %88 = call i8* @procfile_lineword(i32* %86, i64 %87, i32 1)
  store i8* %88, i8** %5, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i64 @simple_hash(i8* %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @Read_hash, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %94, %85
  %100 = phi i1 [ false, %85 ], [ %98, %94 ]
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i32*, i32** @cgroup_read_blkio.ff, align 8
  %106 = load i64, i64* %3, align 8
  %107 = call i8* @procfile_lineword(i32* %105, i64 %106, i32 2)
  %108 = call i64 @str2ull(i8* %107)
  %109 = load %struct.blkio*, %struct.blkio** %2, align 8
  %110 = getelementptr inbounds %struct.blkio, %struct.blkio* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  br label %137

113:                                              ; preds = %99
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @Write_hash, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  br label %122

122:                                              ; preds = %117, %113
  %123 = phi i1 [ false, %113 ], [ %121, %117 ]
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load i32*, i32** @cgroup_read_blkio.ff, align 8
  %129 = load i64, i64* %3, align 8
  %130 = call i8* @procfile_lineword(i32* %128, i64 %129, i32 2)
  %131 = call i64 @str2ull(i8* %130)
  %132 = load %struct.blkio*, %struct.blkio** %2, align 8
  %133 = getelementptr inbounds %struct.blkio, %struct.blkio* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %127, %122
  br label %137

137:                                              ; preds = %136, %104
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %3, align 8
  br label %81

141:                                              ; preds = %81
  %142 = load %struct.blkio*, %struct.blkio** %2, align 8
  %143 = getelementptr inbounds %struct.blkio, %struct.blkio* %142, i32 0, i32 2
  store i32 1, i32* %143, align 8
  %144 = load %struct.blkio*, %struct.blkio** %2, align 8
  %145 = getelementptr inbounds %struct.blkio, %struct.blkio* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %180

152:                                              ; preds = %141
  %153 = load %struct.blkio*, %struct.blkio** %2, align 8
  %154 = getelementptr inbounds %struct.blkio, %struct.blkio* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %152
  %158 = load %struct.blkio*, %struct.blkio** %2, align 8
  %159 = getelementptr inbounds %struct.blkio, %struct.blkio* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %164 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %165 = icmp eq i64 %163, %164
  br label %166

166:                                              ; preds = %162, %157, %152
  %167 = phi i1 [ true, %157 ], [ true, %152 ], [ %165, %162 ]
  %168 = zext i1 %167 to i32
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %173 = load %struct.blkio*, %struct.blkio** %2, align 8
  %174 = getelementptr inbounds %struct.blkio, %struct.blkio* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %179

175:                                              ; preds = %166
  %176 = load i64, i64* @cgroup_recheck_zero_blkio_every_iterations, align 8
  %177 = load %struct.blkio*, %struct.blkio** %2, align 8
  %178 = getelementptr inbounds %struct.blkio, %struct.blkio* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %175, %171
  br label %180

180:                                              ; preds = %179, %141
  br label %181

181:                                              ; preds = %22, %46, %58, %69, %180, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @procfile_reopen(i32*, i32, i32*, i32) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i8* @procfile_lineword(i32*, i64, i32) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @str2ull(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
