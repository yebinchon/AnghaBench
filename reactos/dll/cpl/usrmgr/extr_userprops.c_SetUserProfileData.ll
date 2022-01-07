; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_userprops.c_SetUserProfileData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_userprops.c_SetUserProfileData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32*, i32*, i32* }

@IDC_USER_PROFILE_PATH = common dso_local global i32 0, align 4
@IDC_USER_PROFILE_SCRIPT = common dso_local global i32 0, align 4
@IDC_USER_PROFILE_LOCAL = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@IDC_USER_PROFILE_LOCAL_PATH = common dso_local global i32 0, align 4
@IDC_USER_PROFILE_REMOTE_PATH = common dso_local global i32 0, align 4
@IDC_USER_PROFILE_DRIVE = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_GETLBTEXTLEN = common dso_local global i32 0, align 4
@CB_GETLBTEXT = common dso_local global i32 0, align 4
@NERR_Success = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Status: %lu  Index: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @SetUserProfileData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetUserProfileData(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %struct.TYPE_5__** %5 to i32*
  %18 = call i32 @NetUserGetInfo(i32* null, i32 %16, i32 3, i32* %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IDC_USER_PROFILE_PATH, align 4
  %21 = call i32 @GetDlgItem(i32 %19, i32 %20)
  %22 = call i32 @GetWindowTextLength(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  br label %46

28:                                               ; preds = %2
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i8* @HeapAlloc(i32 %29, i32 0, i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @IDC_USER_PROFILE_PATH, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @GetDlgItemText(i32 %36, i32 %37, i8* %38, i32 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %28, %25
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @IDC_USER_PROFILE_SCRIPT, align 4
  %49 = call i32 @GetDlgItem(i32 %47, i32 %48)
  %50 = call i32 @GetWindowTextLength(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  br label %74

56:                                               ; preds = %46
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i8* @HeapAlloc(i32 %57, i32 0, i32 %62)
  store i8* %63, i8** %7, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @IDC_USER_PROFILE_SCRIPT, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @GetDlgItemText(i32 %64, i32 %65, i8* %66, i32 %68)
  %70 = load i8*, i8** %7, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %56, %53
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @IDC_USER_PROFILE_LOCAL, align 4
  %77 = call i64 @IsDlgButtonChecked(i32 %75, i32 %76)
  %78 = load i64, i64* @BST_CHECKED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @IDC_USER_PROFILE_LOCAL_PATH, align 4
  %83 = call i32 @GetDlgItem(i32 %81, i32 %82)
  %84 = call i32 @GetWindowTextLength(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  br label %108

90:                                               ; preds = %80
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i8* @HeapAlloc(i32 %91, i32 0, i32 %96)
  store i8* %97, i8** %8, align 8
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @IDC_USER_PROFILE_LOCAL_PATH, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @GetDlgItemText(i32 %98, i32 %99, i8* %100, i32 %102)
  %104 = load i8*, i8** %8, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  br label %108

108:                                              ; preds = %90, %87
  br label %172

109:                                              ; preds = %74
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @IDC_USER_PROFILE_REMOTE_PATH, align 4
  %112 = call i32 @GetDlgItem(i32 %110, i32 %111)
  %113 = call i32 @GetWindowTextLength(i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32* null, i32** %118, align 8
  br label %137

119:                                              ; preds = %109
  %120 = call i32 (...) @GetProcessHeap()
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i8* @HeapAlloc(i32 %120, i32 0, i32 %125)
  store i8* %126, i8** %8, align 8
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @IDC_USER_PROFILE_REMOTE_PATH, align 4
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  %132 = call i32 @GetDlgItemText(i32 %127, i32 %128, i8* %129, i32 %131)
  %133 = load i8*, i8** %8, align 8
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  store i32* %134, i32** %136, align 8
  br label %137

137:                                              ; preds = %119, %116
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* @IDC_USER_PROFILE_DRIVE, align 4
  %140 = call i32 @GetDlgItem(i32 %138, i32 %139)
  %141 = load i32, i32* @CB_GETCURSEL, align 4
  %142 = call i32 @SendMessage(i32 %140, i32 %141, i32 0, i32 0)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @CB_ERR, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %171

146:                                              ; preds = %137
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @IDC_USER_PROFILE_DRIVE, align 4
  %149 = call i32 @GetDlgItem(i32 %147, i32 %148)
  %150 = load i32, i32* @CB_GETLBTEXTLEN, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @SendMessage(i32 %149, i32 %150, i32 %151, i32 0)
  store i32 %152, i32* %12, align 4
  %153 = call i32 (...) @GetProcessHeap()
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 4
  %158 = trunc i64 %157 to i32
  %159 = call i8* @HeapAlloc(i32 %153, i32 0, i32 %158)
  store i8* %159, i8** %9, align 8
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @IDC_USER_PROFILE_DRIVE, align 4
  %162 = call i32 @GetDlgItem(i32 %160, i32 %161)
  %163 = load i32, i32* @CB_GETLBTEXT, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i8*, i8** %9, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = call i32 @SendMessage(i32 %162, i32 %163, i32 %164, i32 %166)
  %168 = load i8*, i8** %9, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %146, %137
  br label %172

172:                                              ; preds = %171, %108
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %177 = ptrtoint %struct.TYPE_5__* %176 to i32
  %178 = call i64 @NetUserSetInfo(i32* null, i32 %175, i32 3, i32 %177, i32* %11)
  store i64 %178, i64* %10, align 8
  %179 = load i64, i64* %10, align 8
  %180 = load i64, i64* @NERR_Success, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %172
  %183 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %184 = load i64, i64* %10, align 8
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @DebugPrintf(i32 %183, i64 %184, i32 %185)
  br label %187

187:                                              ; preds = %182, %172
  %188 = load i8*, i8** %6, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = call i32 (...) @GetProcessHeap()
  %192 = load i8*, i8** %6, align 8
  %193 = call i32 @HeapFree(i32 %191, i32 0, i8* %192)
  br label %194

194:                                              ; preds = %190, %187
  %195 = load i8*, i8** %7, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = call i32 (...) @GetProcessHeap()
  %199 = load i8*, i8** %7, align 8
  %200 = call i32 @HeapFree(i32 %198, i32 0, i8* %199)
  br label %201

201:                                              ; preds = %197, %194
  %202 = load i8*, i8** %8, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = call i32 (...) @GetProcessHeap()
  %206 = load i8*, i8** %8, align 8
  %207 = call i32 @HeapFree(i32 %205, i32 0, i8* %206)
  br label %208

208:                                              ; preds = %204, %201
  %209 = load i8*, i8** %9, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = call i32 (...) @GetProcessHeap()
  %213 = load i8*, i8** %9, align 8
  %214 = call i32 @HeapFree(i32 %212, i32 0, i8* %213)
  br label %215

215:                                              ; preds = %211, %208
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %217 = call i32 @NetApiBufferFree(%struct.TYPE_5__* %216)
  %218 = load i64, i64* %10, align 8
  %219 = load i64, i64* @NERR_Success, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  ret i32 %221
}

declare dso_local i32 @NetUserGetInfo(i32*, i32, i32, i32*) #1

declare dso_local i32 @GetWindowTextLength(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetDlgItemText(i32, i32, i8*, i32) #1

declare dso_local i64 @IsDlgButtonChecked(i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i64 @NetUserSetInfo(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @DebugPrintf(i32, i64, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
