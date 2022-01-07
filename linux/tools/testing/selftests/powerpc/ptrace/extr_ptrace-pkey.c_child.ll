; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-pkey.c_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-pkey.c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@PKEY_DISABLE_EXECUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%-30s AMR: %016lx pkey1: %d pkey2: %d pkey3: %d\0A\00", align 1
@user_write = common dso_local global i8* null, align 8
@SPRN_AMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%-30s AMR: %016lx\0A\00", align 1
@user_read = common dso_local global i8* null, align 8
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shared_info*)* @child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child(%struct.shared_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shared_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.shared_info* %0, %struct.shared_info** %3, align 8
  store i32 1, i32* %5, align 4
  %10 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %11 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %10, i32 0, i32 7
  %12 = call i32 @wait_parent(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %2, align 4
  br label %241

17:                                               ; preds = %1
  %18 = load i32, i32* @PKEY_DISABLE_EXECUTE, align 4
  %19 = call i32 @sys_pkey_alloc(i32 0, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = call i32 @sys_pkey_alloc(i32 0, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %28 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %27, i32 0, i32 7
  %29 = call i32 @CHILD_FAIL_IF(i32 %26, i32* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %22, %17
  %31 = call i32 @sys_pkey_alloc(i32 0, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %36 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %35, i32 0, i32 7
  %37 = call i32 @CHILD_FAIL_IF(i32 %34, i32* %36)
  %38 = call i32 @sys_pkey_alloc(i32 0, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %43 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %42, i32 0, i32 7
  %44 = call i32 @CHILD_FAIL_IF(i32 %41, i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @pkeyshift(i32 %45)
  %47 = shl i64 3, %46
  %48 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %49 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @pkeyshift(i32 %52)
  %54 = shl i64 3, %53
  %55 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %56 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = or i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %60 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @pkeyshift(i32 %62)
  %64 = shl i64 3, %63
  %65 = or i64 %61, %64
  %66 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %67 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %30
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @pkeyshift(i32 %73)
  %75 = shl i64 1, %74
  %76 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %77 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %89

80:                                               ; preds = %30
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @pkeyshift(i32 %81)
  %83 = shl i64 1, %82
  %84 = xor i64 %83, -1
  %85 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %86 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = and i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %80, %72
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @pkeyshift(i32 %90)
  %92 = shl i64 1, %91
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @pkeyshift(i32 %93)
  %95 = shl i64 1, %94
  %96 = or i64 %92, %95
  %97 = xor i64 %96, -1
  %98 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %99 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = and i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i64 @pkeyshift(i32 %102)
  %104 = shl i64 3, %103
  %105 = load i32, i32* %7, align 4
  %106 = call i64 @pkeyshift(i32 %105)
  %107 = shl i64 3, %106
  %108 = or i64 %104, %107
  %109 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %110 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = or i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @pkeyshift(i32 %113)
  %115 = shl i64 1, %114
  %116 = load i32, i32* %7, align 4
  %117 = call i64 @pkeyshift(i32 %116)
  %118 = shl i64 1, %117
  %119 = or i64 %115, %118
  %120 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %121 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = or i64 %122, %119
  store i64 %123, i64* %121, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @pkeyshift(i32 %124)
  %126 = shl i64 3, %125
  %127 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %128 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = or i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @sys_pkey_free(i32 %131)
  %133 = load i8*, i8** @user_write, align 8
  %134 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %135 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i8*, i8*, i64, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %133, i64 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* @SPRN_AMR, align 4
  %142 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %143 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @mtspr(i32 %141, i64 %144)
  %146 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %147 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %146, i32 0, i32 7
  %148 = call i32 @prod_parent(i32* %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %151 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %150, i32 0, i32 7
  %152 = call i32 @CHILD_FAIL_IF(i32 %149, i32* %151)
  %153 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %154 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %153, i32 0, i32 7
  %155 = call i32 @wait_parent(i32* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %89
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %2, align 4
  br label %241

160:                                              ; preds = %89
  %161 = load i32, i32* @SPRN_AMR, align 4
  %162 = call i64 @mfspr(i32 %161)
  store i64 %162, i64* %4, align 8
  %163 = load i8*, i8** @user_read, align 8
  %164 = load i64, i64* %4, align 8
  %165 = call i32 (i8*, i8*, i64, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %163, i64 %164)
  %166 = load i64, i64* %4, align 8
  %167 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %168 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %166, %169
  %171 = zext i1 %170 to i32
  %172 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %173 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %172, i32 0, i32 7
  %174 = call i32 @CHILD_FAIL_IF(i32 %171, i32* %173)
  %175 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %176 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %175, i32 0, i32 7
  %177 = call i32 @prod_parent(i32* %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %180 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %179, i32 0, i32 7
  %181 = call i32 @CHILD_FAIL_IF(i32 %178, i32* %180)
  %182 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %183 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %182, i32 0, i32 7
  %184 = call i32 @wait_parent(i32* %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %160
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %2, align 4
  br label %241

189:                                              ; preds = %160
  %190 = load i32, i32* @SPRN_AMR, align 4
  %191 = call i64 @mfspr(i32 %190)
  store i64 %191, i64* %4, align 8
  %192 = load i8*, i8** @user_read, align 8
  %193 = load i64, i64* %4, align 8
  %194 = call i32 (i8*, i8*, i64, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %192, i64 %193)
  %195 = load i64, i64* %4, align 8
  %196 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %197 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %195, %198
  %200 = zext i1 %199 to i32
  %201 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %202 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %201, i32 0, i32 7
  %203 = call i32 @CHILD_FAIL_IF(i32 %200, i32* %202)
  %204 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %205 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %204, i32 0, i32 7
  %206 = call i32 @prod_parent(i32* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %209 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %208, i32 0, i32 7
  %210 = call i32 @CHILD_FAIL_IF(i32 %207, i32* %209)
  %211 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %212 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %211, i32 0, i32 7
  %213 = call i32 @wait_parent(i32* %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %189
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %2, align 4
  br label %241

218:                                              ; preds = %189
  %219 = load i32, i32* @SPRN_AMR, align 4
  %220 = call i64 @mfspr(i32 %219)
  store i64 %220, i64* %4, align 8
  %221 = load i8*, i8** @user_read, align 8
  %222 = load i64, i64* %4, align 8
  %223 = call i32 (i8*, i8*, i64, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %221, i64 %222)
  %224 = load i64, i64* %4, align 8
  %225 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %226 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %224, %227
  %229 = zext i1 %228 to i32
  %230 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %231 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %230, i32 0, i32 7
  %232 = call i32 @CHILD_FAIL_IF(i32 %229, i32* %231)
  %233 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %234 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %233, i32 0, i32 7
  %235 = call i32 @prod_parent(i32* %234)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %238 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %237, i32 0, i32 7
  %239 = call i32 @CHILD_FAIL_IF(i32 %236, i32* %238)
  %240 = load i32, i32* @TEST_PASS, align 4
  store i32 %240, i32* %2, align 4
  br label %241

241:                                              ; preds = %218, %216, %187, %158, %15
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local i32 @wait_parent(i32*) #1

declare dso_local i32 @sys_pkey_alloc(i32, i32) #1

declare dso_local i32 @CHILD_FAIL_IF(i32, i32*) #1

declare dso_local i64 @pkeyshift(i32) #1

declare dso_local i32 @sys_pkey_free(i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, ...) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i32 @prod_parent(i32*) #1

declare dso_local i64 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
