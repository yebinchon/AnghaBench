; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb_downloader.c_download.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb_downloader.c_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SPDBDownloader = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [15 x i8] c"%s%s%s%s%s%s%s\00", align 1
@R_SYS_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"curl -sfLA \22%s\22 \22%s/%s/%s/%s\22 --create-dirs -o \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cabextract\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s -d \22%s\22 \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Attempting to download compressed pdb in %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"curl exited with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Attempting to decompress pdb\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"cab extractor exited with error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Falling back to uncompressed pdb\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Attempting to download uncompressed pdb in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SPDBDownloader*)* @download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @download(%struct.SPDBDownloader* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SPDBDownloader*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.SPDBDownloader* %0, %struct.SPDBDownloader** %3, align 8
  %21 = load %struct.SPDBDownloader*, %struct.SPDBDownloader** %3, align 8
  %22 = getelementptr inbounds %struct.SPDBDownloader, %struct.SPDBDownloader* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28, %1
  store i32 0, i32* %2, align 4
  br label %223

35:                                               ; preds = %28
  %36 = call i32 (...) @checkCurl()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %223

39:                                               ; preds = %35
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 1
  %47 = call i8* @malloc(i64 %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %223

51:                                               ; preds = %39
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  %58 = call i32 @memcpy(i8* %52, i8* %55, i64 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 95, i8* %62, align 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @r_str_escape(i8* %65)
  store i8* %66, i8** %10, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @r_str_escape(i8* %69)
  store i8* %70, i8** %11, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @r_str_escape(i8* %73)
  store i8* %74, i8** %12, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i8* @r_str_escape(i8* %75)
  store i8* %76, i8** %13, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @r_str_escape(i8* %79)
  store i8* %80, i8** %14, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @r_str_escape(i8* %83)
  store i8* %84, i8** %15, align 8
  %85 = call i64 (...) @checkExtract()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %51
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %153

92:                                               ; preds = %87, %51
  store i32 1, i32* %16, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* @R_SYS_DIR, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* @R_SYS_DIR, align 4
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* @R_SYS_DIR, align 4
  %101 = load i8*, i8** %13, align 8
  %102 = call i8* (i8*, i8*, i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %93, i8* %96, i8* %97, i32 %98, i8* %99, i32 %100, i8* %101)
  store i8* %102, i8** %7, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i8* (i8*, i8*, i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %103, i8* %104, i8* %105, i8* %106, i8* %107, i8* %108)
  store i8* %109, i8** %5, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = call i8* @r_file_dirname(i8* %110)
  store i8* %111, i8** %20, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = load i8*, i8** %20, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i8* (i8*, i8*, i8*, i8*, ...) @r_str_newf(i8* %112, i8* %113, i8* %114, i8* %115)
  store i8* %116, i8** %6, align 8
  %117 = load i8*, i8** %20, align 8
  %118 = call i32 @R_FREE(i8* %117)
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  %121 = load i8*, i8** %5, align 8
  %122 = call i64 @r_sys_cmd(i8* %121)
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %17, align 4
  br i1 %123, label %125, label %128

125:                                              ; preds = %92
  %126 = load i32, i32* %17, align 4
  %127 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %125, %92
  %129 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  %139 = call i64 @r_sys_cmd(i8* %138)
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %17, align 4
  %144 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %143)
  store i32 0, i32* %16, align 4
  br label %145

145:                                              ; preds = %142, %137, %134
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @r_file_rm(i8* %146)
  br label %148

148:                                              ; preds = %145, %128
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 @R_FREE(i8* %149)
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @R_FREE(i8* %151)
  br label %153

153:                                              ; preds = %148, %87
  %154 = load i32, i32* %16, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %205

156:                                              ; preds = %153
  %157 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  %158 = load i8*, i8** %8, align 8
  %159 = load i64, i64* %9, align 8
  %160 = sub i64 %159, 1
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8 98, i8* %161, align 1
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 @R_FREE(i8* %162)
  %164 = load i8*, i8** %8, align 8
  %165 = call i8* @r_str_escape(i8* %164)
  store i8* %165, i8** %13, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = load i32, i32* @R_SYS_DIR, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* @R_SYS_DIR, align 4
  %172 = load i8*, i8** %12, align 8
  %173 = load i32, i32* @R_SYS_DIR, align 4
  %174 = load i8*, i8** %13, align 8
  %175 = call i8* (i8*, i8*, i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %166, i8* %169, i8* %170, i32 %171, i8* %172, i32 %173, i8* %174)
  store i8* %175, i8** %7, align 8
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 4
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = call i8* (i8*, i8*, i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %178, i8* %181, i8* %184, i8* %187, i8* %188, i8* %189)
  store i8* %190, i8** %5, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %191)
  %193 = load i8*, i8** %5, align 8
  %194 = call i64 @r_sys_cmd(i8* %193)
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %17, align 4
  br i1 %195, label %197, label %200

197:                                              ; preds = %156
  %198 = load i32, i32* %17, align 4
  %199 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %198)
  store i32 0, i32* %16, align 4
  br label %200

200:                                              ; preds = %197, %156
  %201 = load i8*, i8** %5, align 8
  %202 = call i32 @R_FREE(i8* %201)
  %203 = load i8*, i8** %7, align 8
  %204 = call i32 @R_FREE(i8* %203)
  br label %205

205:                                              ; preds = %200, %153
  %206 = load i8*, i8** %8, align 8
  %207 = call i32 @R_FREE(i8* %206)
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 @R_FREE(i8* %208)
  %210 = load i8*, i8** %10, align 8
  %211 = call i32 @R_FREE(i8* %210)
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 @R_FREE(i8* %212)
  %214 = load i8*, i8** %12, align 8
  %215 = call i32 @R_FREE(i8* %214)
  %216 = load i8*, i8** %13, align 8
  %217 = call i32 @R_FREE(i8* %216)
  %218 = load i8*, i8** %14, align 8
  %219 = call i32 @R_FREE(i8* %218)
  %220 = load i8*, i8** %15, align 8
  %221 = call i32 @R_FREE(i8* %220)
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %205, %50, %38, %34
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @checkCurl(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @r_str_escape(i8*) #1

declare dso_local i64 @checkExtract(...) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @r_file_dirname(i8*) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i64 @r_sys_cmd(i8*) #1

declare dso_local i32 @r_file_rm(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
