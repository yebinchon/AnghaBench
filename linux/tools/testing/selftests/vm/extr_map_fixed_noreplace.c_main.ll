; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_fixed_noreplace.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_fixed_noreplace.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PAGE_SIZE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i64 0, align 8
@MAP_ANONYMOUS = common dso_local global i64 0, align 8
@MAP_FIXED_NOREPLACE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@BASE_ADDRESS = common dso_local global i64 0, align 8
@PROT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mmap() @ 0x%lx-0x%lx p=%p result=%m\0A\00", align 1
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Error: couldn't map the space we need for the test\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Error: munmap failed!?\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unmap() successful\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Error: first mmap() failed unexpectedly\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Error:1: mmap() succeeded when it shouldn't have\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Error:2: mmap() succeeded when it shouldn't have\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Error:3: mmap() succeeded when it shouldn't have\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Error:4: mmap() succeeded when it shouldn't have\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Error:5: mmap() failed when it shouldn't have\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Error:6: mmap() failed when it shouldn't have\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @_SC_PAGE_SIZE, align 4
  %8 = call i64 @sysconf(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* @MAP_PRIVATE, align 8
  %10 = load i64, i64* @MAP_ANONYMOUS, align 8
  %11 = or i64 %9, %10
  %12 = load i64, i64* @MAP_FIXED_NOREPLACE, align 8
  %13 = or i64 %11, %12
  store i64 %13, i64* %2, align 8
  store i64 0, i64* @errno, align 8
  %14 = load i64, i64* @BASE_ADDRESS, align 8
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = mul i64 5, %15
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @PROT_NONE, align 4
  %21 = load i64, i64* %2, align 8
  %22 = call i8* @mmap(i8* %18, i64 %19, i32 %20, i64 %21, i32 -1, i32 0)
  store i8* %22, i8** %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %24, %25
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26, i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** @MAP_FAILED, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %0
  %33 = call i32 (...) @dump_maps()
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

35:                                               ; preds = %0
  store i64 0, i64* @errno, align 8
  %36 = load i64, i64* %3, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i64, i64* %5, align 8
  %39 = mul i64 5, %38
  %40 = call i64 @munmap(i8* %37, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = call i32 (...) @dump_maps()
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

45:                                               ; preds = %35
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* @errno, align 8
  %47 = load i64, i64* @BASE_ADDRESS, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %47, %48
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %5, align 8
  %51 = mul i64 3, %50
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %3, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* @PROT_NONE, align 4
  %56 = load i64, i64* %2, align 8
  %57 = call i8* @mmap(i8* %53, i64 %54, i32 %55, i64 %56, i32 -1, i32 0)
  store i8* %57, i8** %6, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %59, %60
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %61, i8* %62)
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** @MAP_FAILED, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %45
  %68 = call i32 (...) @dump_maps()
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

70:                                               ; preds = %45
  store i64 0, i64* @errno, align 8
  %71 = load i64, i64* @BASE_ADDRESS, align 8
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = mul i64 5, %72
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %3, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* @PROT_NONE, align 4
  %78 = load i64, i64* %2, align 8
  %79 = call i8* @mmap(i8* %75, i64 %76, i32 %77, i64 %78, i32 -1, i32 0)
  store i8* %79, i8** %6, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* %4, align 8
  %83 = add i64 %81, %82
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %83, i8* %84)
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** @MAP_FAILED, align 8
  %88 = icmp ne i8* %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %70
  %90 = call i32 (...) @dump_maps()
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

92:                                               ; preds = %70
  store i64 0, i64* @errno, align 8
  %93 = load i64, i64* @BASE_ADDRESS, align 8
  %94 = load i64, i64* %5, align 8
  %95 = mul i64 2, %94
  %96 = add i64 %93, %95
  store i64 %96, i64* %3, align 8
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %4, align 8
  %98 = load i64, i64* %3, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = load i64, i64* %4, align 8
  %101 = load i32, i32* @PROT_NONE, align 4
  %102 = load i64, i64* %2, align 8
  %103 = call i8* @mmap(i8* %99, i64 %100, i32 %101, i64 %102, i32 -1, i32 0)
  store i8* %103, i8** %6, align 8
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* %4, align 8
  %107 = add i64 %105, %106
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %104, i64 %107, i8* %108)
  %110 = load i8*, i8** %6, align 8
  %111 = load i8*, i8** @MAP_FAILED, align 8
  %112 = icmp ne i8* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %92
  %114 = call i32 (...) @dump_maps()
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

116:                                              ; preds = %92
  store i64 0, i64* @errno, align 8
  %117 = load i64, i64* @BASE_ADDRESS, align 8
  %118 = load i64, i64* %5, align 8
  %119 = mul i64 3, %118
  %120 = add i64 %117, %119
  store i64 %120, i64* %3, align 8
  %121 = load i64, i64* %5, align 8
  %122 = mul i64 2, %121
  store i64 %122, i64* %4, align 8
  %123 = load i64, i64* %3, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = load i64, i64* %4, align 8
  %126 = load i32, i32* @PROT_NONE, align 4
  %127 = load i64, i64* %2, align 8
  %128 = call i8* @mmap(i8* %124, i64 %125, i32 %126, i64 %127, i32 -1, i32 0)
  store i8* %128, i8** %6, align 8
  %129 = load i64, i64* %3, align 8
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* %4, align 8
  %132 = add i64 %130, %131
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %129, i64 %132, i8* %133)
  %135 = load i8*, i8** %6, align 8
  %136 = load i8*, i8** @MAP_FAILED, align 8
  %137 = icmp ne i8* %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %116
  %139 = call i32 (...) @dump_maps()
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

141:                                              ; preds = %116
  store i64 0, i64* @errno, align 8
  %142 = load i64, i64* @BASE_ADDRESS, align 8
  store i64 %142, i64* %3, align 8
  %143 = load i64, i64* %5, align 8
  %144 = mul i64 2, %143
  store i64 %144, i64* %4, align 8
  %145 = load i64, i64* %3, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = load i64, i64* %4, align 8
  %148 = load i32, i32* @PROT_NONE, align 4
  %149 = load i64, i64* %2, align 8
  %150 = call i8* @mmap(i8* %146, i64 %147, i32 %148, i64 %149, i32 -1, i32 0)
  store i8* %150, i8** %6, align 8
  %151 = load i64, i64* %3, align 8
  %152 = load i64, i64* %3, align 8
  %153 = load i64, i64* %4, align 8
  %154 = add i64 %152, %153
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %151, i64 %154, i8* %155)
  %157 = load i8*, i8** %6, align 8
  %158 = load i8*, i8** @MAP_FAILED, align 8
  %159 = icmp ne i8* %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %141
  %161 = call i32 (...) @dump_maps()
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

163:                                              ; preds = %141
  store i64 0, i64* @errno, align 8
  %164 = load i64, i64* @BASE_ADDRESS, align 8
  store i64 %164, i64* %3, align 8
  %165 = load i64, i64* %5, align 8
  store i64 %165, i64* %4, align 8
  %166 = load i64, i64* %3, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = load i64, i64* %4, align 8
  %169 = load i32, i32* @PROT_NONE, align 4
  %170 = load i64, i64* %2, align 8
  %171 = call i8* @mmap(i8* %167, i64 %168, i32 %169, i64 %170, i32 -1, i32 0)
  store i8* %171, i8** %6, align 8
  %172 = load i64, i64* %3, align 8
  %173 = load i64, i64* %3, align 8
  %174 = load i64, i64* %4, align 8
  %175 = add i64 %173, %174
  %176 = load i8*, i8** %6, align 8
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %172, i64 %175, i8* %176)
  %178 = load i8*, i8** %6, align 8
  %179 = load i8*, i8** @MAP_FAILED, align 8
  %180 = icmp eq i8* %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %163
  %182 = call i32 (...) @dump_maps()
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

184:                                              ; preds = %163
  store i64 0, i64* @errno, align 8
  %185 = load i64, i64* @BASE_ADDRESS, align 8
  %186 = load i64, i64* %5, align 8
  %187 = mul i64 4, %186
  %188 = add i64 %185, %187
  store i64 %188, i64* %3, align 8
  %189 = load i64, i64* %5, align 8
  store i64 %189, i64* %4, align 8
  %190 = load i64, i64* %3, align 8
  %191 = inttoptr i64 %190 to i8*
  %192 = load i64, i64* %4, align 8
  %193 = load i32, i32* @PROT_NONE, align 4
  %194 = load i64, i64* %2, align 8
  %195 = call i8* @mmap(i8* %191, i64 %192, i32 %193, i64 %194, i32 -1, i32 0)
  store i8* %195, i8** %6, align 8
  %196 = load i64, i64* %3, align 8
  %197 = load i64, i64* %3, align 8
  %198 = load i64, i64* %4, align 8
  %199 = add i64 %197, %198
  %200 = load i8*, i8** %6, align 8
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %196, i64 %199, i8* %200)
  %202 = load i8*, i8** %6, align 8
  %203 = load i8*, i8** @MAP_FAILED, align 8
  %204 = icmp eq i8* %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %184
  %206 = call i32 (...) @dump_maps()
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

208:                                              ; preds = %184
  %209 = load i64, i64* @BASE_ADDRESS, align 8
  store i64 %209, i64* %3, align 8
  %210 = load i64, i64* %5, align 8
  %211 = mul i64 5, %210
  store i64 %211, i64* %4, align 8
  %212 = load i64, i64* %3, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = load i64, i64* %4, align 8
  %215 = call i64 @munmap(i8* %213, i64 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %208
  %218 = call i32 (...) @dump_maps()
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %223

220:                                              ; preds = %208
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %223

223:                                              ; preds = %220, %217, %205, %181, %160, %138, %113, %89, %67, %42, %32
  %224 = load i32, i32* %1, align 4
  ret i32 %224
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i8* @mmap(i8*, i64, i32, i64, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_maps(...) #1

declare dso_local i64 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
