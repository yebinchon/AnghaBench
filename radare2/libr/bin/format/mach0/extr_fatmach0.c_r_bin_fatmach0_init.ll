; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mach0/extr_fatmach0.c_r_bin_fatmach0_init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mach0/extr_fatmach0.c_r_bin_fatmach0_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_fatmach0_obj_t = type { i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"read (fat_header)\00", align 1
@FAT_MAGIC = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Endian FAT_MAGIC failed (?)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"malloc (fat_arch)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"read (fat_arch)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_fatmach0_obj_t*)* @r_bin_fatmach0_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_fatmach0_init(%struct.r_bin_fatmach0_obj_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_fatmach0_obj_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.r_bin_fatmach0_obj_t* %0, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %9 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %11 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %14 = call i32 @r_buf_read_at(i32 %12, i32 0, i32* %13, i32 4)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %168

20:                                               ; preds = %1
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %22 = call i8* @r_read_be32(i32* %21)
  %23 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %24 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 4
  %27 = call i8* @r_read_be32(i32* %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %30 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %33 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %37 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %39 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = add i64 4, %42
  %44 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %45 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %168

50:                                               ; preds = %20
  %51 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %52 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** @FAT_MAGIC, align 8
  %56 = icmp ne i8* %54, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %59 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %64 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %57, %50
  %68 = call i32 @eprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %168

69:                                               ; preds = %62
  %70 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %71 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %78 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %168

82:                                               ; preds = %69
  %83 = load i32, i32* %4, align 4
  %84 = call %struct.TYPE_5__* @malloc(i32 %83)
  %85 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %86 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %85, i32 0, i32 2
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %86, align 8
  %87 = icmp ne %struct.TYPE_5__* %84, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %168

90:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %164, %90
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %94 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %167

97:                                               ; preds = %91
  %98 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %98, i8 0, i64 16, i1 false)
  %99 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %100 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = add i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %108 = call i32 @r_buf_read_at(i32 %101, i32 %106, i32* %107, i32 4)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ne i64 %110, 4
  br i1 %111, label %112, label %118

112:                                              ; preds = %97
  %113 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %115 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = call i32 @R_FREE(%struct.TYPE_5__* %116)
  store i32 0, i32* %2, align 4
  br label %168

118:                                              ; preds = %97
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %120 = call i8* @r_read_be32(i32* %119)
  %121 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %122 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %121, i32 0, i32 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  store i8* %120, i8** %127, align 8
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 4
  %129 = call i8* @r_read_be32(i32* %128)
  %130 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %131 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %130, i32 0, i32 2
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  store i8* %129, i8** %136, align 8
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 8
  %138 = call i8* @r_read_be32(i32* %137)
  %139 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %140 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %139, i32 0, i32 2
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  store i8* %138, i8** %145, align 8
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 12
  %147 = call i8* @r_read_be32(i32* %146)
  %148 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %149 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %148, i32 0, i32 2
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  store i8* %147, i8** %154, align 8
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 16
  %156 = call i8* @r_read_be32(i32* %155)
  %157 = load %struct.r_bin_fatmach0_obj_t*, %struct.r_bin_fatmach0_obj_t** %3, align 8
  %158 = getelementptr inbounds %struct.r_bin_fatmach0_obj_t, %struct.r_bin_fatmach0_obj_t* %157, i32 0, i32 2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i8* %156, i8** %163, align 8
  br label %164

164:                                              ; preds = %118
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %91

167:                                              ; preds = %91
  store i32 1, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %112, %88, %81, %67, %49, %18
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i8* @r_read_be32(i32*) #2

declare dso_local i32 @eprintf(i8*) #2

declare dso_local %struct.TYPE_5__* @malloc(i32) #2

declare dso_local i32 @R_FREE(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
